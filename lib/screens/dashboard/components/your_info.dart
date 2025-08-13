import 'package:fadamat/constants.dart';
import 'package:fadamat/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/ble_controller.dart';
import '../../../models/reading.dart';
import '../../../services/isar_service.dart';

class YourInfo extends StatefulWidget {
  const YourInfo({super.key});

  @override
  State<YourInfo> createState() => _YourInfoState();
}

class _YourInfoState extends State<YourInfo> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  String? _selectedCrop;
  String? _selectedSoil;

  final List<String> _crops = ['Wheat', 'Maize', 'Rice', 'Barley'];
  final List<String> _soils = ['Clay', 'Sandy', 'Loamy', 'Peaty'];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onAddNew() async {
    final name = _nameController.text;
    final phone = _phoneController.text;
    final crop = _selectedCrop;
    final soil = _selectedSoil;

    if (_formKey.currentState!.validate() && crop != null && soil != null) {
      // 1. Send crop and soil to BLE
      await context.read<BleController>().sendCropAndSoil(crop, soil);

      // 2. Save to Isar
      final reading =
          Reading()
            ..name = name
            ..phone = phone
            ..crop = crop
            ..soil = soil
            ..date = DateTime.now();
      await IsarService.addReading(reading);

      // 3. Clear the form after successful submission
      _nameController.clear();
      _phoneController.clear();
      setState(() {
        _selectedCrop = null;
        _selectedSoil = null;
      });
    }
    // No SnackBar or pop-up for incomplete or sent form
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Measurement", style: Theme.of(context).textTheme.titleMedium),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding / 2,
                ),
              ),
              onPressed: _onAddNew,
              icon: Icon(Icons.add),
              label: Text("New"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Form(
          key: _formKey,
          child: Responsive(
            mobile: Column(
              children: [
                _InfoFieldsLeft(
                  nameController: _nameController,
                  phoneController: _phoneController,
                ),
                SizedBox(height: defaultPadding),
                _InfoFieldsRight(
                  selectedCrop: _selectedCrop,
                  selectedSoil: _selectedSoil,
                  crops: _crops,
                  soils: _soils,
                  onCropChanged: (val) => setState(() => _selectedCrop = val),
                  onSoilChanged: (val) => setState(() => _selectedSoil = val),
                ),
              ],
            ),
            desktop: Row(
              children: [
                Expanded(
                  child: _InfoFieldsLeft(
                    nameController: _nameController,
                    phoneController: _phoneController,
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: _InfoFieldsRight(
                    selectedCrop: _selectedCrop,
                    selectedSoil: _selectedSoil,
                    crops: _crops,
                    soils: _soils,
                    onCropChanged: (val) => setState(() => _selectedCrop = val),
                    onSoilChanged: (val) => setState(() => _selectedSoil = val),
                  ),
                ),
              ],
            ),
            tablet: Row(
              children: [
                Expanded(
                  child: _InfoFieldsLeft(
                    nameController: _nameController,
                    phoneController: _phoneController,
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: _InfoFieldsRight(
                    selectedCrop: _selectedCrop,
                    selectedSoil: _selectedSoil,
                    crops: _crops,
                    soils: _soils,
                    onCropChanged: (val) => setState(() => _selectedCrop = val),
                    onSoilChanged: (val) => setState(() => _selectedSoil = val),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// --- Extracted Widgets ---

class _InfoFieldsLeft extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;

  const _InfoFieldsLeft({
    required this.nameController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.85),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(defaultPadding / 1.5),
      margin: EdgeInsets.all(2),
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Full name',
                filled: true,
                fillColor: Colors.black.withAlpha((0.08 * 255).toInt()),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
              ),
              style: TextStyle(fontSize: 14),
              validator:
                  (value) =>
                      value == null || value.isEmpty ? 'Enter full name' : null,
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          SizedBox(
            height: 48,
            child: TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: 'Phone Number',
                filled: true,
                fillColor: Colors.black.withAlpha((0.08 * 255).toInt()),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
              ),
              style: TextStyle(fontSize: 14),
              validator:
                  (value) =>
                      value == null || value.isEmpty
                          ? 'Enter phone number'
                          : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoFieldsRight extends StatelessWidget {
  final String? selectedCrop;
  final String? selectedSoil;
  final List<String> crops;
  final List<String> soils;
  final ValueChanged<String?> onCropChanged;
  final ValueChanged<String?> onSoilChanged;

  const _InfoFieldsRight({
    required this.selectedCrop,
    required this.selectedSoil,
    required this.crops,
    required this.soils,
    required this.onCropChanged,
    required this.onSoilChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.85),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(defaultPadding / 1.5),
      margin: EdgeInsets.all(2),
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: DropdownButtonFormField<String>(
              value: selectedCrop,
              items:
                  crops
                      .map(
                        (crop) => DropdownMenuItem(
                          value: crop,
                          child: Text(crop, style: TextStyle(fontSize: 14)),
                        ),
                      )
                      .toList(),
              onChanged: onCropChanged,
              decoration: InputDecoration(
                hintText: 'Crop',
                filled: true,
                fillColor: Colors.black.withAlpha((0.08 * 255).toInt()),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
              ),
              validator: (value) => value == null ? 'Select a crop' : null,
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          SizedBox(
            height: 48,
            child: DropdownButtonFormField<String>(
              value: selectedSoil,
              items:
                  soils
                      .map(
                        (soil) => DropdownMenuItem(
                          value: soil,
                          child: Text(soil, style: TextStyle(fontSize: 14)),
                        ),
                      )
                      .toList(),
              onChanged: onSoilChanged,
              decoration: InputDecoration(
                hintText: 'Soil',
                filled: true,
                fillColor: Colors.black.withAlpha((0.08 * 255).toInt()),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
              ),
              validator: (value) => value == null ? 'Select a soil type' : null,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:fadamat/constants.dart';
import 'package:fadamat/controllers/menu_app_controller.dart';
import 'package:fadamat/controllers/ble_controller.dart';
import 'package:fadamat/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  Future<void> _showBleDevicesDialog(
    BuildContext context,
    BleController ble,
  ) async {
    await ble.scanForDevices();
    showDialog(
      context: context,
      builder: (context) {
        return Consumer<BleController>(
          builder: (context, ble, _) {
            return AlertDialog(
              title: Text('Available Bluetooth Devices'),
              content: SizedBox(
                width: 300,
                height: 300,
                child:
                    ble.foundDevices.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                          itemCount: ble.foundDevices.length,
                          itemBuilder: (context, index) {
                            final device = ble.foundDevices[index];
                            return ListTile(
                              title: Text(
                                device.name.isNotEmpty
                                    ? device.name
                                    : device.id.id,
                              ),
                              subtitle: Text(device.id.id),
                              onTap: () async {
                                await ble.connectToDevice(device);
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ble = context.watch<BleController>();

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Spacer(),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: ble.isConnected ? primaryColor : secondaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: defaultPadding / 2,
            ),
          ),
          icon: Icon(Icons.bluetooth),
          label: Text(ble.isConnected ? "Connected" : "Bluetooth"),
          onPressed: () async {
            if (ble.isConnected) {
              await ble.disconnect();
            } else {
              await _showBleDevicesDialog(context, ble);
            }
          },
        ),
      ],
    );
  }
}

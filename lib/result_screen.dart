import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Scanner",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children:  [
            // show QR code here 
            QrImage(data: "",size: 150, version: QrVersions.auto,),
           const Text("Scanned Result",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                )),
          const  SizedBox(height: 10),
          const  Text(
              "Scanned Result",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
                  const  SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width -100,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300
                    ),
                    
                    onPressed: (){}, child: const Text(
                  "Copy",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                              ),
                            ),
                )
          ],
        ),
      ),
    );
  }
}

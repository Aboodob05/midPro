import 'package:flutter/material.dart';

final List<String> campaignDescriptions = [
  "Campaign to raise awareness for blood donation. Join us and help save lives\nPhon: 0778541285.",
  "Another campaign focusing on donating blood for those in need.\nPhon: 0778541285",
  "A third campaign for spreading awareness about blood donation.\nPhon: 0778541285",
];

class Campaignsbox extends StatelessWidget {
  final int? indx;

  Campaignsbox({required this.indx});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12), // rounded corners for the box

        ),
        width: double.infinity,
        height: 420,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage("assets/campaigns/camp${indx! + 1}.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Description of the campaign
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(campaignDescriptions[indx!],
                style: TextStyle(fontSize: 18, color: Colors.black),
                maxLines: 3,
                overflow: TextOverflow.ellipsis, // to avoid overflowing
              ),
            ),
          ],
        ),
      ),
    );
  }
}

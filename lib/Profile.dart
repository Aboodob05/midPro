import 'import.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int indx = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person,size: 30,)
              ),
              const SizedBox(height: 10),
              Text(
                "Abdullah Obeidat",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bloodtype, color: Colors.red, size: 25),
                  const SizedBox(width: 5),
                  Text(
                    "A+",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 5),

              const SizedBox(height: 20),
              buildInfoTile(Icons.email, "Email", "Abdullah@gmail.com"),
              buildInfoTile(Icons.location_on, "Address", "Irbid - Bani Kenanah"),
              buildInfoTile(Icons.calendar_today, "DOB", "26th Fib, 2005"),
              buildInfoTile(Icons.bloodtype, "Last donated", "2nd February, 2022"),
              buildInfoTile(Icons.water_drop, "Total units donated", "0 Units"),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomBar(indx: indx,)
    );
  }

  Widget buildInfoTile(IconData icon, String title, String value) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.red),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value, style: TextStyle(color: Colors.black54)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(InstagramProfile());

class InstagramProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilePage(), debugShowCheckedModeBanner: false);
  }
}

class ProfilePage extends StatelessWidget {
  final String username = 'vaisov_visionary';
  final String bio =
      '🧠 Creative thinker | 📸 Visual poet\n🌍 Lviv | 💡 KazkoTherapy founder';
  final String avatarUrl =
     'asstes/tipa_ava_lol.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat('Posts', '128'),
                      _buildStat('Followers', '2.3K'),
                      _buildStat('Following', '345'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Vaisov',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Align(alignment: Alignment.centerLeft, child: Text(bio)),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Follow'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Message'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(child: _buildPostGrid()),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(label),
      ],
    );
  }

  Widget _buildPostGrid() {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey[300],
          child: Center(child: Text('📸')),
        );
      },
    );
  }
}

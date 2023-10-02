import 'dart:math';

import 'package:flutter/material.dart';



class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}
int activeDiceFace = 6;
List<String> diceImage = [ 
  'https://th.bing.com/th/id/R.7b88256ce3dce95b8fc67de8b21b1d25?rik=9qGKGUYABETo1g&riu=http%3a%2f%2fimages.clipartpanda.com%2f1-dice-clipart-die_01_42158_lg.gif&ehk=sGi%2boTYaARzjk6IMB1MiX6tkXnjo%2fVxSiWIfNq6sFQ4%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.5e935cd9075e8b4ad1e484c0dd1d063c?rik=SC9xJ0g0yYUVYA&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKij%2fpa5%2fKijpa5xXT.png&ehk=4BlMxWm5Di4iqaKirM9TBfW3ERkYRU6ldUIIWT6kUdo%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.231d6f507aaba05eed2388f935fe42fd?rik=PsgQ994AS%2fBDcg&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fO%2fI%2fr%2f9%2fW%2fx%2fdice-3-hi.png&ehk=GPrfgoH8%2fa8ETYBcNHAlMs%2fJpw4x26f1HVCBi9tYYdA%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.286b4537d430d9f51ae89fbd7220fea4?rik=yO2r3cgV1uQ1lQ&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2f0%2fj%2fn%2fg%2fz%2f1%2fdice-4-hi.png&ehk=W4kqdLT4XIVAh%2ff%2fDAZI0nNxUNRAC1yiNz9J6Jm0Jt0%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.8c13fe34d5f5f71dfc4849bae986f91e?rik=xFm0mcIsXdG5Jg&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fr%2fz%2fd%2fa%2fL%2fV%2fdice-4-hi.png&ehk=%2fmmQ4xC3smiagTdmfldmfqpdyHV55cJxp3dut2Kd3Mw%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.d2453d5b3cda8e247ea48aeba419b05d?rik=7da1LfPivrkA8A&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fY%2fg%2f8%2fe%2fo%2f9%2fdice-6-md.png&ehk=DMp8sGImcoB8uUQSENRS3Y%2bGq6njPniafIVAcqqASMM%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
  'https://th.bing.com/th/id/R.e9049ddb86d5f15b2ca705613121fdaa?rik=Pue4Sszw5%2bbvQg&riu=http%3a%2f%2fbestanimations.com%2fGames%2fDice%2frolling-dice-gif-3.gif&ehk=C1A7Ydk7jxF4n1B0jLaLASwbSvNL%2b%2fKydskh4qlbVTg%3d&risl=&pid=ImgRaw&r=0'];
class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple.shade300,
            Colors.blue.shade300,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text( 'Roll Dice',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(diceImage[activeDiceFace],
              height: 150,
                width: 150,
              ),
              const SizedBox(
                  height: 10,
              ),
              TextButton(onPressed: (){
                var ranNum = Random().nextInt(6);
                setState(() {
                  activeDiceFace = ranNum;
                });
                print('button pressed');       
              }, 
              child: const Text('Roll',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
              ),
              ),
              ),
            ],
            
        ),
      ),
    ),
    );
  }
}
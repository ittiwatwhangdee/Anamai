import 'package:anamai/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String _title = 'ข้อกําหนดและเงื่อนไขการใช้บริการ';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: RegisterPage._title,
      theme: ThemeData(
        fontFamily: 'SFProTH_regular',
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          title: const Text(
            RegisterPage._title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 38,
              ),
              Image.asset(
                'assets/images/LogoAnamai.png',
                height: 120,
                width: 170,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'ข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชันระบบ\nการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้\nภารกิจของอนามัย (DOHCard Application)',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'ก่อนเริ่มใช้งานโปรดอ่านและทำความเข้าใจอย่างละเอียด และกรุณายอมรับข้อกำหนดและเงื่อนไข',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                '             ' +
                    'โปรดอ่านและทำความเข้าใจข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชั่นนี้อย่างละเอียด การที่ท่านได้ติดตั้งหรือเข้าใช้งานแอปพลิเคชันนี้แล้ว ถือว่าท่านตกลงยอมรับข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชันแล้วทุกประการ หากท่านไม่สามารถยอมรับข้อกำหนดนโยบายความเป็นส่วนตัวนี้ได้ ขอให้ท่านปฏิเสธการใช้งานแอปพลิเคชันของท่านทันที',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                '1. วัตถุประสงค์',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '             ' +
                    'กรมอนามัย ได้จัดทำแอปพลิเคชัน ภายใต้ชื่อ "ระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัย (DOHCard Application)"  ขึ้นโดยมีวัตถุประสงค์เพื่อ',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '1.1 เพื่อลงทะเบียนบัตรประจำตัวเจ้าพนักงาน พนักงานเจ้าหน้าที่ บัตรประจำตัว ผู้ประกอบกิจการสถานที่จำหน่ายอาหารและผู้สัมผัสอาหารแบบอิเล็กทรอนิกส์ตามกฎหมายที่อยู่ในความรับผิดชอบของกรมอนามัย',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '2. การให้ความยินยอมพิสูจน์ตัวตน',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'ข้าพเจ้ายินยอมให้ กรมอนามัย (รวมถึงหน่วยงานอื่นใดที่ได้รับมอบหมายจากกรมอนามัย) และหน่วยงานอื่น เก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคลของข้าพเจ้า ได้แก่ เลขบัตรประจำตัวประชาชน ชื่อ - นามสกุล วันเกิด เบอร์โทรศัพท์ ที่อยู่ ที่ผู้ใช้งานบันทึกข้อมูลหรือระบุบนเอกสารยืนยันตัวตนของราชการ ข้อมูลชีวภาพ/ข้อมูลชีวมิติ (เช่น ภาพจำลองใบหน้า)',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '3. การให้ความยินยอมข้อมูลส่วนบุคคล',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'เพื่อให้การใช้งานระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัย เป็นไปตามกฎหมายว่าด้วยการคุ้มครองข้อมูลส่วนบุคคล กรมอนามัยและหรือองค์กรและ/หรือหน่วยงานอื่นใดที่ให้บริการภายใต้แอปพลิเคชัน ระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัย ขอให้ผู้ใช้งานแสดงเจตนายินยอมให้ หน่วยงาน เก็บรวมรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของผู้ใช้งาน รวมทั้งรับทราบว่ากรมอนามัย ผู้ให้บริการแอปพลิเคชัน ระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัยและผู้พัฒนาระบบให้บริการเพื่อเชื่อมต่อกับหน่วยงานที่ได้รับมอบหมายจากหน่วยงาน เก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของผู้มีสิทธิ ทั้งนี้ ภายใต้วัตถุประสงค์ในการดำเนินการบริการด้านการส่งเสริมสุขภาพที่เกี่ยวข้องกับหน่วยงาน',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '4. เงื่อนไขและข้อกำหนดการใช้งานเว็บไซต์และโมบายแอปพลิเคชัน',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '4.1 กลุ่มผู้ใช้จะได้เป็นสมาชิกในเว็บไซต์และแอปพลิเคชัน เมื่อลงทะเบียนเป็นสมาชิก โดยกลุ่มผู้ใช้รับประกันว่ารายละเอียดส่วนตัวที่กลุ่มผู้ใช้ให้ไว้ในการลงทะเบียนเป็นสมาชิกของช่องทางสื่อสารนั้นถูกต้องเป็นจริง ครบถ้วนและไม่บิดเบือนทุกประการ',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '4.2 ผู้ใช้แต่ละคนต้องไม่ใช้ชื่อผู้ใช้หรือรหัสผ่านที่ละเมิดสิทธิ์ของผู้ใดหรือชื่อที่กรมอนามัยเห็นว่ารุนแรง ไม่เหมาะสมหรือไม่สมควร ถ้าผู้ใช้กระทำสิ่งดังกล่าว กรมอนามัยขอสงวนสิทธิ์ในการเปลี่ยนแปลงหรือลบชื่อผู้ใช้หรือรหัสผ่านนั้นและ/หรือยกเลิกการเป็นสมาชิกของผู้ใช้ในช่องทางสื่อสารนั้น ทั้งนี้ ไม่ว่าในกรณีใดก็ตาม กรมอนามัยจะไม่รับผิดชอบการใช้ชื่อผู้ใช้หรือรหัสผ่านที่ไม่เหมาะสมของผู้ใช้รายใด',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '4.3 กลุ่มผู้ใช้จะรับผิดชอบการเก็บข้อมูลการล็อกอินและรหัสผ่านเกี่ยวกับบัญชีสมาชิกของตนไว้เป็นความลับแต่ผู้เดียว ทั้งนี้ ไม่ว่าในกรณีใดก็ตาม กรมอนามัยจะไม่รับผิดชอบหรือรับผิดต่อความสูญเสียหรือความเสียหายในการที่ผู้อื่นลักลอบใช้บัญชีสมาชิก',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '4.4 กรมอนามัยขอสงวนสิทธิ์ในการปิดใช้งานหรือยกเลิกบัญชีสมาชิกของผู้ใช้ในเวลาใดก็ตามที่กรมอนามัยเห็นเหมาะสม',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '4.5 ข้อมูลที่กลุ่มผู้ใช้ให้ไว้แก่กรมอนามัยในแบบการลงทะเบียนเป็นสมาชิกนั้นจะได้รับการจัดการตามนโยบายความเป็นส่วนตัวและการคุ้มครองข้อมูลส่วนบุคคล ซึ่งกรมอนามัยขอแนะนำให้กลุ่มผู้ใช้อ่านทำความเข้าใจก่อนลงทะเบียนเนื่องจากเงื่อนไขที่ระบุไว้นั้นมีผลผูกมัดกลุ่มผู้ใช้',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '5. นโยบายความเป็นส่วนตัว และการคุ้มครองข้อมูลส่วนบุคคล',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '5.1 DOHCard Application ให้ความสำคัญแก่ความเป็นส่วนตัวของผู้ใช้บริการฯ เป็นลำดับแรก',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '5.2 DOHCard Application จะคุ้มครองความเป็นส่วนตัวและข้อมูลส่วนบุคคลของผู้ใช้บริการฯ อย่างเหมาะสมตาม',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '5.3 การเก็บรวบรวมข้อมูลส่วนตัว กรมอนามัยจะเก็บรวบรวมข้อมูลและ/หรือรายละเอียดส่วนตัวเกี่ยวกับผู้ใช้ เช่น เลขบัตรประจำตัวประชาชน ชื่อ ชื่อในการเข้าใช้และรหัสผ่าน ที่อยู่ ที่อยู่อีเมล หมายเลขโทรศัพท์ อายุ เพศ วันเกิด ไม่ได้เปิดเผยให้ทราบโดยทั่วไป',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '5.4 กรมอนามัยตกลงว่าจะดำเนินทุกขั้นตอนในการเก็บข้อมูลและรายละเอียดส่วนตัวของผู้ใช้ไว้เป็นความลับและ/หรือไม่ให้มีการเปิดเผยและ/หรือส่งข้อมูลและ/หรือรายละเอียดส่วนตัวของผู้ใช้ให้เฉพาะเจ้าหน้าที่กรมอนามัย',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '6. ข้อจำกัดการใช้งาน',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '             ' +
                    'ผู้ใช้ไม่สามารถกระทำการดังต่อไปนี้ เมื่อใช้บริการฯ ที่ระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัย (DOHCard Application) กำหนด',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '6.1 การกระทำที่เป็นการเก็บรวบรวม เปิดเผย หรือการให้ข้อมูลส่วนบุคคลของบุคคลอื่น ข้อมูลที่จดทะเบียน ประวัติผู้ใช้ หรือข้อมูลอื่นๆ ในทำนองเดียวกันโดยไม่ชอบด้วยกฎหมายหรือไม่เหมาะสม',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '6.2 การกระทำที่ละเมิดสิทธิในทรัพย์สินทางปัญญา เช่น ลิขสิทธิ์ เครื่องหมายการค้าและสิทธิบัตร สิทธิในชื่อเสียง ความเป็นส่วนตัว และสิทธิอื่นๆ ทั้งหมดที่ได้รับตามกฎหมายหรือตามสัญญากับ DOHCard Application และ/หรือบุคคลที่สาม',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '6.3 การกระทำที่อาจทำให้ผู้อื่นเข้าใจผิดเกี่ยวกับ DOHCard Application และ/หรือบุคคลภายนอกหรือการจงใจเผยแพร่ข้อมูลเท็จ',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                '6.4 การกระทำซึ่งเป็นการแทรกแซงเครื่องแม่ข่ายและ/หรือระบบเครือข่ายของการให้บริการฯ การกระทำซึ่งเป็นการใช้บริการฯ ในทางที่ผิดด้วยการใช้บ็อท (bots) เป็นเครื่องมือเพื่อโกงหรือด้วยวิธีการทางเทคนิคอื่นๆ การกระทำที่ใช้ข้อบกพร่องของการบริการฯ โดยไตร่ตรองไว้ก่อน การกระทำที่ทำการสอบถามคำถามซ้ำๆ เกินความจำเป็น และการกระทำที่เป็นการแทรกแซงการให้บริการฯ ของ DOHCard Application หรือการใช้บริการฯ ของผู้ใช้',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '7. การเปลี่ยนแปลงข้อกำหนดและเงื่อนไข',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '             ' +
                    'กรมอนามัย ขอสงวนสิทธิ์ในการแก้ไขหรือปรับปรุงเงื่อนไข เว็บไซต์หรือแอปพลิเคชัน และ/หรือบริการที่ให้บริการได้ทุกเมื่อโดยแจ้ง หรือไม่แจ้งให้ผู้ใช้ทราบก็ได้ และอาจทำการเพิ่มคุณสมบัติใหม่ซึ่งจะมีผลต่อเงื่อนไขผู้ใช้ใดๆ ที่ใช้เว็บไซต์หรือแอปพลิเคชัน หรือบริการต่อหลังจากมีการเปลี่ยนแปลงจะยอมรับข้อตกลงต่อการเปลี่ยนแปลงเหล่านั้น ผู้ใช้ควรทำการตรวจสอบเงื่อนไขก่อนอย่างสม่ำเสมอ เวอร์ชั่นใหม่ของเงื่อนไขเหล่านี้จะลงวันที่ตามวันที่ที่มีผลบังคับใช้',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        fixedSize: const Size(120, 43),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text(
                        'ไม่ยอมรับ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        fixedSize: const Size(120, 43),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ยอมรับ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

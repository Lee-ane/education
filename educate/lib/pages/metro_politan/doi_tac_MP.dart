import 'package:educate/widgets/user_widget.dart';
import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class DoiTacMP extends StatefulWidget {
  const DoiTacMP({super.key});

  @override
  State<DoiTacMP> createState() => _DoiTacMPState();
}

class _DoiTacMPState extends State<DoiTacMP> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              'https://b-f10-zpcloud.zdn.vn/5881862265507466975/c054cc9bf7c5259b7cd4.jpg',
              width: screenWidth,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.8,
                    left: screenWidth * 0.12,
                  ),
                  child: Text(
                    'LIÊN KẾT GIỮA MCC VÀ UCW',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      'Trường Cao đẳng cộng đồng Metropolitan (MCC) có một Hiệp định Hợp tác với UCW (Đại học Canada West) nhằm tạo điều kiện cho việc tuyển sinh các sinh viên đủ điều kiện từ MCC vào UCW và quảng bá chương trình học của UCW tới các sinh viên đủ điều kiện tại MCC. Hiệp định này cho phép sinh viên MCC sau khi hoàn thành thành công các chương trình Diploma sau đây nhận được tín chỉ chuyển đổi cho đến 9 khóa học hoặc 27 tín chỉ tại UCW:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                  child: SizedBox(
                    height: screenHeight * 0.2,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TaggetText(
                          text:
                              'Chương trình Diploma Quản lý E-sport Quốc tế: Sinh viên MCC hoàn thành chương trình diploma này có thể nhận được tín chỉ chuyển đổi cho đến 20 khóa học hoặc 60 tín chỉ tại UCW.',
                        ),
                        TaggetText(
                          text:
                              'Thông qua hiệp định này, sinh viên đủ điều kiện từ MCC có cơ hội tiếp tục học tập tại UCW và theo đuổi bằng Cử nhân Thương mại, xây dựng trên nền tảng học vụ trước đó của họ.',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      'Chương trình liên kết giữa Trường cao đẳng cộng đồng Metropolitan (MCC) và chương trình Bachelor of Commerce tại Đại học Canada West (UCW) mang đến nhiều lợi ích cho sinh viên:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                  child: SizedBox(
                    height: screenHeight * 0.3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TaggetText(
                          text:
                              'Sinh viên được nhận 1 bằng đại học cử nhân thương mại tại University of Canada west và cao đẳng Quản lý E-sport quốc tế chỉ trong vòng 3 năm.',
                        ),
                        TaggetText(
                          text:
                              'Sinh viên được thực tập tại các studio của Sony, Microsoft,... tại Vancouter vì đây là chương trình duy nhất tại tỉnh British Columbia.',
                        ),
                        TaggetText(
                          text:
                              'Sinh viên được nhận Giấy phép làm việc sau tốt nghiệp (Post-Graduation Work Permit - PGWP): Thời gian 3 năm.',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      '1. Chuyển đổi tín chỉ: Sinh viên hoàn thành chương trình Quản lý E-sport quốc tế tại MCC có thể chuyển đổi tín chỉ sang chương trình Bachelor of Commerce tại UCW. Điều này có nghĩa là một số khóa học tại MCC sẽ được công nhận và tính vào việc hoàn thành bằng cấp cử nhân tại UCW, giảm thời gian và chi phí tổng cộng cần để đạt được bằng cấp.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      '2. Chuyển tiếp liền mạch: Chương trình liên kết đảm bảo sự chuyển tiếp thuận lợi cho sinh viên từ MCC sang UCW. Sinh viên có thể chuyển từ MCC sang UCW một cách dễ dàng mà không cần lặp lại các khóa học hoặc trải qua quy trình tuyển sinh riêng. Điều này giúp tiết kiểm thời gian và nỗ lực cho sinh viên khi chuyển đổi lên cấp đại học.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      '3. Công nhận văn bằng: Bằng quản lý E-sport quốc tế từ MCC được công nhận và đánh giá cao bởi UCW. Điều này có nghĩa là kiến thức và kỹ năng thu được trong chương trình bằng cấp được coi là phù hợp và áp dụng cho chương trình Bachelor or Commerce tại UCW. Sinh viên có thể xây dựng trên nền tảng của mình trong quản lý e-sports và tiếp tục học tập trong lĩnh vực kinh doanh.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      '4. Mở rộng cơ hội nghề nghiệp: Bằng việc hoàn thành cả chương trình bằng cấp và bằng cử nhân, sinh viên có thể nâng cao triển vọng nghề nghiệp của mình trong ngành e-sport và cả ngành kinh doanh khác. Sự kết hợp giữa kiến thức chuyên sâu về quản lý e-sport từ MCC và giáo dục kinh doanh tổng thể từ UCW trang bị cho sinh viên một bộ kỹ năng độc đáo được săn đón trong thị trường lao động cạnh tranh.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      '5. Hỗ trợ học thuật: Trong suốt chương trình liên kết, sinh viên nhận được sự hỗ trợ học thuật và hướng dẫn từ cả MCC và UCW. Họ có quyền truy cập vào tài nguyên, giảng viên và cố vấn từ cả hai cơ sở giáo dục, đảm bảo rằng họ nhận được sự trợ giúp cần thiết để thành công trong học tập và đưa ra quyết định thông thái về hành trình giáo dục của mình.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.015,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Esport(),
      ],
    );
  }
}

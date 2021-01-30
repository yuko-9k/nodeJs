-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 30, 2021 lúc 07:29 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm_nodejs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`) VALUES
(1, 'Trang Chủ'),
(2, 'Sách Kinh Tế'),
(3, 'Sách Văn Học - Tiểu Thuyết\r\n '),
(4, 'Sách Kỹ Năng'),
(5, 'Sách Tâm Lý'),
(6, 'Sách Tham Khảo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `id_product`, `id_user`) VALUES
(1, 'Được rồi nha', 3, 4),
(2, 'èiergtgt', 3, 4),
(3, 'èefrfr', 3, 4),
(4, 'lần 2', 3, 4),
(5, 'kjkjkj', 3, 4),
(6, 'kjkjkj', 3, 4),
(7, 'hhhhhhh', 3, 4),
(8, 'jknf', 3, 4),
(9, 'jhkhhk', 3, 4),
(10, 'jhhkukui', 3, 4),
(12, 'fewfwefwefewfwefewfewfewfewfew', 3, 4),
(13, 'dsfsadadadsdssssss', 3, 4),
(14, 'dwdwdwdwdwdwdwdwdwdwdwdwdwdwdwdwdwd', 3, 4),
(15, 'ưdwdwdwdw', 3, 4),
(16, 'rgegrgrgrg', 6, 4),
(17, 'rgegrgrgrg', 6, 4),
(18, 'rgegrgrgrg', 6, 4),
(19, 'rgegrgrgrg', 6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(2250) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_catalog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `author`, `description`, `image`, `id_catalog`) VALUES
(3, '8 cuốn sách hay về Markerting cho người mới bắt đầu', 'Phuong', 'Marketing là một lĩnh vực phát triển cao với các ngành kỹ thuật, lý thuyết, chiến thuật và công cụ mới xuất hiện mỗi ngày. Cách duy nhất để luôn đứng đầu là theo dõi và sẵn sàng để nắm bắt mọi thứ mới và hữu ích.\r\n\r\nBạn sẽ học hỏi từ một số nhà tiếp thị và lãnh đạo doanh nghiệp giỏi nhất để suy nghĩ khác biệt, hiểu mục đích kinh doanh của bạn, quyết định cách bán hàng cho khách hàng và nghiền nát chiến lược kinh doanh.\r\n\r\nMặc dù có hàng ngàn cuốn sách nói về ngành Marketing được xuất bản mỗi năm, hầu hết các cuốn sách được để sẵn trên kệ đã đóng bụi. Đây là lý do tại sao tôi biên soạn bài viết về danh sách những cuốn sách hay về marketing cho bạn. Mục tiêu của tôi là đưa bạn đi đường sắt; phần còn lại là tùy thuộc vào bạn.', 'https://isachhay.net/wp-content/uploads/2020/07/marketing-gioi-phai-kiem-duoc-tien-the-end-of-marketing-as-we-know-it.jpg', 2),
(4, 'Nhà lãnh đạo không chức danh', 'Nhu', 'Nội dung của Nhà Lãnh Đạo Không Chức Danh được viết ra dưới dạng 1 câu chuyện hư cấu về anh chàng bán sách có tên là Blake Davis, và cuộc gặp gỡ đầy thú ví cùng nhà cố vấn đặc biệt Tommy Flinn cùng 4 người thầy phi thường đã làm cho thay đổi hoàn toàn tư duy làm việc và cuộc sống của anh.\r\n\r\nBlake Davis luôn bắt buộc đối mặt với những chấn thương về tâm lý khi trong quá khứ của anh đã từng nhập ngũ và buộc phải trải qua cuộc chiến khốc liệt tại Iraq. Công việc của anh nhàm chán và buồn tẻ mặc cho mỗi ngày anh đều làm việc xung quanh những trang sách của mình.\r\n\r\nCho tới một ngày nọ anh gặp được Tommy Flinn, 1 người đàn ông kỳ quặc trong bộ quần áo nhếch nhác, cũ kỹ và thủng rách, đi kèm với đó đấy là mái tóc rối bù như xơ mướp, hàm răng ố vàng lởm chởm của ông ta. Điểm gây ấn tượng duy nhất trên cơ thể người đàn ông tồi tàn này là đôi mắt tinh anh đầy sắc sảo, mẫu nhìn mê hoặc của một con người đầy quyền lực và học thức.', 'https://isachhay.net/wp-content/uploads/2018/12/Nha-lanh-dao-khong-chuc-danh-review-1-768x881.jpg', 5),
(5, 'Tôi tài giỏi bạn cũng thế', 'Phuong', 'Tôi Tài Giỏi, Bạn Cũng Thế đã đọc qua cuốn sách này 3 năm trước, nhưng đến hôm nay mới cho review. Nếu bạn còn đang là học sinh, bạn đang ngồi trên giảng đường đại học, bạn lo lắng về những kì thi khó nhằn, bạn đang tìm những phương pháp học tập tốt, bạn cần một chút động lực lớn để cải thiện việc học tập tốt hơn và vượt qua khó khăn? Tôi Tài Giỏi, Bạn Cũng Thế chính là quyển sách dành cho bạn!\r\n\r\nThực sự đây là 1 quyển sách tương đối hay được viết ra bởi một doanh nhân thành công, 1 triệu phú bậc nhất của Singapore! Nội dung của quyển sách cho chúng ta mọi thứ để có thể đạt được mục tiêu đề ra với đầy đủ mọi bí quyết học tập hợp lý. Tôi bị ấn tượng bởi câu chuyện của chính bản thân tác giả – Adam Khoo cùng với các câu chuyện mà tác giả sưu tập được. ', 'https://isachhay.net/wp-content/uploads/2018/11/toi-tai-gioi-ban-cung-the-adam-khoo-review-sach-01.png', 2),
(6, 'Nếu tôi biết được khi còn 20 ', 'Nhu', 'Top 20 cuốn sách làm thay đổi cuộc đời bạn\r\n\r\n– Về nội dung: Dù mới 24 tuổi nhưng khi đọc kết thúc cuốn sách này, mình vẫn cảm nhận nhiều điều bổ ích. Trước đây, mình đã từng đọc khá nhiều sách Hạt giống tâm hồn mà vì thế có cảm giác cuốn sách này cũng gì ấy về văn phong giống hệt những sách Hạt giống tâm hồn, từ cách đưa ra ví dụ đến phương pháp đúc kết vấn đề cần phải quan tâm. Nhưng thật sự có một vài vấn đề mình chưa từng gặp trong Hạt giống tâm hồn, đặc thù là những vấn đề liên quan tới công việc, nên lúc đọc ngừng mình vẫn thấy thật bổ ích. Nếu như bạn nào đã quá quen thuộc với dòng sách Hạt giống tâm hồn thì đọc quyển này có lẽ sẽ không thấy hấp dẫn lắm.\r\n\r\n– Về hình thức: Sách dày khoảng 250 trang giấy nhưng loại giấy cho mình cảm giác hơi thô cứng và tương đối cũ. Bìa đơn giản theo kiểu Self-help nước ngoài.', 'https://isachhay.net/wp-content/uploads/2018/11/Neu-toi-biet-duoc-khi-con-20.jpg', 4),
(7, 'Ngày xưa có một con bò', 'Thành', 'Một cuốn sách kỹ năng thay đổi tư duy cực kì đặc biệt. Ngày Xưa Có Một Con Bò chỉ dày khoảng hơn 100 trang nhưng chứa đựng trong đó là những bài học to lớn mà tôi gọi đó là sự thay đổi tư duy mang tầm vĩ mô đấy.\r\n\r\nKhi tôi chưa đọc quyển sách này, tôi đã biết sách là một dạng self-help, đưa ra những chỉ dẫn để mọi người “sống tốt hơn”. Tuy nhiên, tôi vẫn thắc mắc “bò” ở đây là gì, tại sao lại là “Ngày Xưa Có Một Con Bò…”? Tôi cứ ôm mãi những thắc mắc ấy, và chưa bao giờ mua sách để đọc, thậm chí không thèm xem review trên mạng, mặc dù lúc nào cũng tự hỏi sách này viết gì mà sao nhiều người khen nó miết thế? Mãi đến khi bạn tôi nhờ mua giúp, rồi cậu ta cho tôi mượn, tôi mới thực sự hiểu được những gì tác giả muốn truyền đạt.', 'https://isachhay.net/wp-content/uploads/2018/11/Neu-toi-biet-duoc-khi-con-20.jpg', 3),
(8, 'Khéo ăn nói sẽ có được thiên hạ', 'Thành', 'Vậy phải thế nào để có thể nói năng lưu loát? Phải làm thế nào để lời nói đi vào lòng người trong những dịp khác nhau giữa những người khác nha ? Cuốn sách “Khéo ăn nói sẽ có được thiên hạ” – Trác Nhã sẽ là chìa khoá mở đến cánh cửa của sự thành công trong giao tiếp.\r\n\r\nKhéo Ăn Nói Sẽ Có Được Thiên Hạ nằm trong danh mục sách kinh tế bán chạy nhất tại Tiki và là cuốn sách “dạy nói”, bởi nó giống như 1 cuốn cẩm nang với nhiều bí mật của nghệ thuật giao tiếp tạo ấn tượng phải chăng với đối phương, bên cạnh đó còn là mẹo để xoay chuyển tình thế khó xử trong một số tình huống, nếu bạn nắm vững những kĩ năng đấy và vận dụng đúng cách thì bạn đã nắm vững chìa khoá để thành công rồi đấy.', 'https://isachhay.net/wp-content/uploads/2018/11/Review-sach-ngay-xua-co-mot-con-bo-sach-ky-nang-02-e1541646772455.jpg', 4),
(9, 'Đời ngắn đừng ngủ dài', 'Huyền', 'Thực sự mà nói thì Đời Ngắn Đừng Ngủ Dài là một quyển sách rất đáng để đọc – khi mà bạn cần những định hướng cho tương lai của mình. Nó ẩn chứa nhiều thông điệp đầy ý nghĩa! Robin Sharma đã cho tôi thấy cuộc sống – thời gian sống – này đáng quý đến nhường nào. Nó giúp tôi giật mình để nhìn lại quãng thời gian mình hay lãng phí cho những cuộc chơi, cho những phút giây lười biếng…Quả thực vậy, thời gian thì cứ trôi đi, chẳng đợi một ai, nếu cứ mãi dừng chân thì ta luôn là người đi sau.\r\n\r\nMột điểm nữa rất hay ở cuốn sách là cuốn sách phản ánh đúng “thói hư tật xấu” của người Việt Nam. Người Việt Nam chúng ta còn quá lề mề, vừa làm vừa chơi, dẫn đến hiệu quả công việc không cao và dễ sinh ra nhiều thói xấu khác.', 'https://isachhay.net/wp-content/uploads/2018/11/review-sach-kheo-an-noi-se-co-duoc-thien-ha-01-e1541135577187.jpg', 3),
(10, 'Đừng bao giờ bỏ cuộc', 'Huyền', 'Nhưng nếu xét về một cuốn sách self-help thì thật ra cũng không khác biệt gì lắm,những bài học nguyên tắc thành công thì cũng vậy chẳng khác nhau nhiều.\r\n\r\nTác phẩm rất đáng để đọc. Sách mỏng có thể đọc hết trong một buổi. Sách cần thiết cho các bạn có ước mơ và muốn hoàn thành ước mơ của mình. Trump nói những vấn đề rất xác đáng. Quyển sách như tiếp thêm động lực cho chúng ta thực hiện ước mơ. Đọc sách ta cảm nhận được những khó khăn mà ông đã trải qua và đó là lí do vì sao ông thành công như ngày hôm nay. Thông điệp duy nhất ông muốn gởi đến chúng ta là nếu cố gắng hết mình, k ngại khó khăn thì cũng sẽ có ngày thành công.\r\n\r\n', 'https://isachhay.net/wp-content/uploads/2018/05/Trump-dung-bao-gio-bo-cuoc-sach-kinh-doanh-hay.jpg', 3),
(11, 'Tung Sản Phẩm: Cuốn sách dành cho người Kinh doanh online', 'Huyền', 'Sẽ như thế nào nếu khi mà người tiều dùng của bạn đếm ngược từng ngày để chờ đợi đến khi họ được mua sản phẩm của bạn?\r\nSẽ như thế nào nếu bạn có thể tạo được một chỗ đứng vững chắc trên thị trường mà không đối thủ nào có thể cạnh tranh được với bạn?\r\nVà bạn có thể thực hiện được điều đó, dù doanh nghiệp của bạn có quy mô nhỏ hay ngân sách hạn chế.\r\n\r\nJEFF WALKER là người thay đổi cách sản phẩm được bán trực tuyến. Ông trở thành một trong những người đào tạo về kinh doanh và marketing hàng đầu thế giới. Quay trở lại những ngày đầu tiên ông bắt đầu dạy Công Thức Tung Sản Phẩm của mình. Hầu như không ai trong lĩnh vực kinh doanh trên mạng bàn về một lần giới thiệu sản phẩm nào và ý tưởng trở thành Triệu Phú dường như không thể trở thành hiện thực. Nhưng trong thời đại ngày nay, những điều đó hầu như đang diễn ra thường nhật.', 'https://isachhay.net/wp-content/uploads/2017/09/sach-kinh-doanh-2.jpg', 5),
(12, 'Giữa Dòng Xoáy Cuộc Đời: Chuyện khởi nghiệp của doanh nhân Việt', 'Huyền', 'Sống trên đời, bất cứ ai cũng có mong muốn làm giàu, muốn có 1 cuộc sống giàu có, nhưng số phận không mỉm cười với tất cả, đặc biệt là đối với giới doanh nhân. Hành trình tìm đến sự thành công của 23 doanh nhân Việt Nam sẽ được độc giả cảm nhận, tìm hiểu qua cuốn sách Giữa Dòng Xoáy Cuộc Đời của tác giả Phan Thế Hải.\r\n\r\nKhởi nghiệp kinh doanh dường như đang bắt đầu trở thành 1 trào lưu thời thượng ở Việt Nam. Tuy nhiên, dù Việt Nam là một nơi mà hầu hết ai cũng hứng thú cho việc kinh doanh, nhiều con người vẫn đang buộc phải chật vật đi tìm định nghĩa về khởi nghiệp start-up trong thế kỷ 21.\r\n\r\nTrong quá khứ, hai từ khởi nghiệp chỉ đơn thuần là 1 chiếc xe đẩy với các mẫu bánh mỳ nóng, thơm ngon để bán trên khắp các nẻo đường từ thành thị tới miền quê. Nhưng môi trường khởi nghiệp hiện tại không còn giống với xưa nữa.', 'https://isachhay.net/wp-content/uploads/2017/09/sach-hay-kinh-te-giua-dong-xoay-cuoc-doi.jpg', 4),
(13, 'Nếu dám nghĩ như một Tỷ phú, tin chắc bạn sẽ mãi thành công', 'Quan', 'Nghĩ như 1 tỷ phú là cuốn tự truyện của chính Donald J. Trump. Trước lúc tiếp nhận vị trí tổng thống Mỹ, Donald J. Trump là 1 tỷ phú bất động sản khét tiếng, là tác giả của nhiều cuốn sách best-seller và ông trùm của một số chương trình giải trí. Con đường làm giàu của Donald Trump không phải ít chông gai dù xuất thân trong một gia đình giàu sang. Nhưng với tính cách quyết đoán, tập trung và không ngừng cố gắng, Donald Trump đã có được vị trí như ngày hôm nay.', 'https://isachhay.net/wp-content/uploads/2018/11/Cay-chuoi-non-di-giay-xanh-review-sach-cua-nguyen-nhat-anh-01-e1541829258702.jpg', 4),
(14, 'Khi Hơi Thở Hóa Thinh Không – Cuốn hồi ký xúc động của một bác sĩ mắc bệnh ung thư', 'Nhu', 'Khi Hơi Thở Hóa Thinh Không là cuốn hồi ký được viết bởi Paul Kalanithi – một vị bác sĩ phẫu thuật não và cũng là một bệnh nhân ung thư phổi giai đoạn cuối. Đây là cuốn Tự truyện sâu sắc nhất mà tôi thương cảm rất nhiều.\r\n\r\nĐã bao giờ bạn tự hỏi, bạn sẽ làm gì khi biết rằng bạn chỉ có thể sống một năm nữa???\r\n\r\nTôi biết thật khó để có thể trả lời cho câu hỏi này, và cũng thật khó khi nghĩ về nó. Nhưng chính Paul Kalanithi đã phải đối mặt với nó, ung thư phổi ở độ tuổi tầm 36, 1 căn bệnh xuất hiện ở độ tuổi đấy mang xác suất cực thấp. Điều đặc trưng là anh lại là 1 bác sĩ phẫu thuật chuyên khoa thần kinh. Qủa thật, cái chết thật không chừa một ai.', 'https://isachhay.net/wp-content/uploads/2018/11/Review-sach-tieu-thuyet-Nguon-Coi-01-e1541575433736.jpg', 4),
(15, 'Con Có Em Rồi Đấy: Cuốn sách giúp cha mẹ tự tin khi có thêm bé mới', 'Ngan', 'Cuốn sách Con Có Em Rồi Đấy miêu tả cuộc sống của 1 gia đình 4 người với đầy đủ 4 cung bậc cảm xúc đan xen theo phương pháp hài hước. Và tôi tin chắc rằng, các cặp bố mẹ nào, ao ước có thêm một thành viên nữa trong gia đình, sau khi đọc cuốn sách này, sẽ tìm được nhiều “trải nghiệm quý báu từ người đi trước”. trong việc có thêm 1 em bé nữa không hề là vòng lặp sinh – nuôi – dạy giống em bé đầu tiên đâu. Đó là 1 trang mới của cuộc đời làm cha mẹ.', 'https://isachhay.net/wp-content/uploads/2018/06/review-sach-hai-so-phan-Kane-and-Abel-01.jpg', 4),
(16, '6 quyển sách hay viết về 1 Sài Gòn nhẹ nhàng và phồn hoa', 'Tien', 'Không có gì quá xa lạ với một Sài Gòn cổ kính và cũng rất hiện đại phồn vinh. Sài Gòn là tên gọi chính thức của Thành phố Hồ Chí Minh vào trước những năm 1976. Và từ ấy cho tới nay, đối với mỗi người dân của cái thành phố này thì từ Sài Gòn đã trở nên thân thương hơn hết thảy, Sài Gòn gắn bó với hàng triệu kiếp người đã và đang mưu sinh bao con người “lữ khách tha hương” trên mảnh đất này.\r\n\r\nQua từng năm tháng với con phố Sài Gòn, bên cạnh những chiếc xe gắn máy, từng chiếc xích lô tảo tần, ly cà phê sữa đá buổi sáng hay những cơn mưa bất chợt lúc đến lúc đi… thì từng trang sách của những con người đã và đang gắn bó cùng Sài Gòn vẫn luôn được xem là món tài sản quý báu nhất trong đời sống tinh thần của người dân Sài thành. Nó nhẹ nhàng và da diết như thế ấy.', 'https://isachhay.net/wp-content/uploads/2018/04/review-rung-nauy-2.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, NULL, 'mapdethuong184@gmail.com', 'fefrgrw'),
(2, NULL, 'nphuong.1841@gmail.com', 'fefhrttr'),
(3, 'Thannh', 'minh1@gmai.com', 'fewotrtry'),
(4, 'Phượng', 'mapdethuong184@gmail.com', '123456'),
(7, 'Huyền', 'huyen@123.com', 'huyenbaby'),
(8, 'huyen', 'guyenenwqw@gmail.com', '123456'),
(9, 'Như', 'truongminhphuc2001@gmail.com', 'abcdef'),
(10, 'Như', 'truongminhphuc2001@gmail.com', 'abcdef'),
(11, 'Ngân', 'frfirfh@gmail.com', '123abc'),
(12, 'Phượng', 'mapdethuong184@gmail.com', '$2b$12$j9l1CcHdwRLYD');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-comment-product` (`id_product`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-product-catalog` (`id_catalog`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk-comment-product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk-product-catalog` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

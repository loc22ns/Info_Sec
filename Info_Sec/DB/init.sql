-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`) VALUES
(1, 'AbeDo', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idBook` int(11) NOT NULL,
  `Bookname` varchar(150) NOT NULL,
  `Writer` varchar(150) NOT NULL,
  `Price` int(11) NOT NULL,
  `Detail` text NOT NULL,
  `Type` int(11) NOT NULL,
  `img_src` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idBook`, `Bookname`, `Writer`, `Price`, `Detail`, `Type`, `img_src`) VALUES
(5, 'Thành phố sau ánh hào quang', 'Denley Lupin', 86000, 'Cuộc đời này những gì đến và đi không phải lúc nào chúng ta cũng có thể quyết định. Điều gì đang có nên trân trọng, thứ gì ra đi nên cảm ơn vì ý nghĩa nó từng đem đến.\n', 5, 'thanhphosauanhhaoquang2.jpg'),
(6, 'Sống Như Lần Đầu Tiên, Yêu Thương Như Lần Cuối', 'DenLey Lupin', 65000, 'Cuốn sách Sống Như Lần Đầu Tiên, Yêu Thương Như Lần Cuối là những câu chuyện đời sống hằng ngày, như chuyện của những tấm bưu thiếp, những lá thư tay, những hạnh phúc giản dị mà chúng ta dễ dàng bỏ lỡ, đặc điểm con người, đời sống ở những vùng miền mà tác giả đã đi qua, hay những cảm xúc đang chi phối mỗi người. Từ những trải nghiệm cá nhân, tác giả muốn chia sẻ lại những cảm xúc của mình về cách nhìn nhận từ những điều nhỏ nhất, đến những quan điểm về cuộc sống nhân sinh. Qua những trang viết đầy chân thành của một người trẻ, Denley Lupin chuyển tải đến người đọc những thông điệp giá trị để yêu cuộc sống hơn!', 5, 'songnhulandautien.jpg'),
(7, 'Sống Cho Tuổi Đôi Mươi Duy Nhất', 'DenLey Lupin', 64000, 'Sống cho tuổi đôi mươi duy nhất là những chia sẻ kinh nghiệm trưởng thành cho các bạn trẻ, giúp các bạn vững tin hơn vào bản thân mình và mạnh dạn theo đổi ước mơ, để khi bước qua tuổi trẻ ngoảnh đầu nhìn lại, bạn thấy mình đã sống thật ý nghĩa và hạnh phúc.\n\nNội dung tác phẩm chia sẻ rất nhiều những kỹ năng sống phù hợp với độc giả trẻ. Chẳng hạn như làm cách nào để hiểu rõ về bản thân mình; vượt qua những nỗi buồn để lớn lên như thế nào; lên kế hoạch cụ thể để chinh phục những ước mơ của bản thân ra sao; làm thế nào để sống tiết kiệm và luôn biết quan tâm đến những người ở xung quanh mình…và rất nhiều những kỹ năng khác nữa.', 5, 'song-cho-tuoi-doi-muoi-duy-nhat-bia.jpg'),
(8, 'Nhắn gửi tất cả các em những người tôi đã yêu', ' Otono Yomoji', 130000, 'Ở nơi mà các thế giới song song chỉ khác nhau ở những điểm nhỏ và một cách vô thức, con người thường xuyên du hành qua chúng.\r\n\r\nNhắn gửi một tôi, người đã yêu em là câu chuyện về Hidaka Koyomi và Satou Shiori, hai đứa trẻ cùng chịu cảnh gia đình không trọn vẹn, gặp nhau ở Viện nghiên cứu Khoa học Hư chất. Cả hai có tình cảm mơ hồ với nhau, nhưng việc cha Koyomi tái hôn với mẹ Shiori đã thay đổi tất cả. Muốn thoát khỏi số phận, Koyomi và Shiori quyết định cùng nhau đi đến một thế giới khác, nơi mà cả hai sẽ không trở thành anh em. Vậy nhưng biến cố xảy ra trong quá trình di chuyển, và…\r\n\r\nThế giới không có em thì chẳng còn ý nghĩa gì nữa', 3, 'nhanguitatcacacemnguoitoiyeu.png'),
(9, 'Gia Tộc Thần Bí', ' Morimi Tomihiko', 127000, 'Rừng thiêng Tadasu giữa đêm giông tố. Phố Pontocho cổ kính bên dòng sông Kamo êm đềm. Hội đốt lửa Gozan rực sáng mang theo những hồi ức. Con đường Karasuma chìm trong trận bão hoa anh đào. Và những vò rượu Denki Bran tuy là hàng giả nhưng làm cho muôn người say mê, còn trở thành nguyên liệu đưa một căn phòng bay lên trời.\r\n\r\nỞ một Kyoto như thế đã diễn ra câu chuyện về một gia đình kỳ lạ gồm những con chồn Tanuki có khả năng thay hình đổi dạng. Bốn anh em mỗi người một tính và người mẹ đầy ắp tình thương, họ cùng nhau cố gắng hàn gắn lỗ hổng để lại sau sự ra đi của người cha. Với ngòi bút tràn đầy tình cảm, Morimi đã đưa người đọc đến với một Kyoto đầy sắc màu, của thiên nhiên, của con người, và của những nhân vật không-hẳn-là-người', 2, 'giatocthanbi.png'),
(10, 'Thám Tử Lừng Danh Conan', ' Gosho Aoyama', 18500, 'Đáp ứng mong mỏi của fan, lâu rồi Conan mới trở về là Shinichi. Nhưng lần này, có gì đó hơi khác!? Có vẻ như Shinichi đã mất hết trí nhớ... nhưng thực ra đằng sau nó ẩn chứa một bí mật kinh hoàng! Trong tập này cũng có \"Chiếc áo sơ mi trắng dính máu\" và \"Lật tẩy bằng chứng ngoại phạm giả của nữ võ sĩ Judo\"!', 2, 'conan.jpg'),
(11, 'Hãy Chăm Sóc Mẹ', ' Shin Kyung-sook', 74000, 'Tác phẩm Hãy chăm sóc mẹ của nhà văn Hàn Quốc Kyung-sook Shin mở đầu bằng khung cảnh xáo trộn của một gia đình. Mẹ bị lạc khi chuẩn bị bước lên tàu điện ngầm cùng bố ở ga Seoul. Hai ông bà dự định lên đây thăm cậu con cả. Con gái đầu, Chi-hon, là người đứng ra viết thông báo tìm người lạc thay cho cả gia đình. “Ngoại hình: Tóc ngắn đã muối tiêu, xương gò má cao, khi đi lạc đang mặc áo sơ mi xanh da trời, áo khoác trắng, váy xếp nếp màu be”. Trong tiềm thức của mình, Chi-hon vẫn nghĩ mẹ là người thường“bước đi giữa biển người với phong thái có thể đe dọa cả những tòa nhà lừng lững đang nhìn thẳng xuống từ trên cao”. Trong khi đó, những người qua đường đáp lại thông báo tìm người lạc của cô bằng miêu tả về một “một bà già cứ lững thững bước đi, thỉnh thoảng lại ngồi bệt xuống đường hay đứng thẫn thờ trước cầu thang cuốn”. Liệu đó có phải là người mẹ mà cả gia đình cô đang cất công tìm kiếm?', 7, 'haychamsocme.jpg'),
(12, 'Hãy Về Với Cha', ' Shin Kyung-sook', 122000, 'Mất đi con gái, nữ nhà văn thu mình lại, đoạn tuyệt với mọi mối quan hệ, thậm chí với chính những người thân trong gia đình, hòng trốn tránh nỗi đau và dằn vặt quá lớn. Phải tới khi về lại quê hương để chăm sóc người cha già yếu một thân một mình, cô mới nhận ra tấm khiên mình dựng lên bấy lâu cũng chính là mũi giáo đâm vào lòng những người ruột thịt.\r\nVề quê, về với ngôi làng nhỏ vẫn nằm đó yên bình giữa dòng đô thị hóa thô bạo. Về với cha, về với những ký ức tuổi thơ vẫn trong lành vẹn nguyên. Và những mất mát tưởng chừng mãi mãi không thể lành cũng dần được hàn gắn', 7, 'hayvevoicha.jpg'),
(13, 'Mọi Điều Cần Biết Về Thế Giới', ' Daniel Tatarsky', 239000, 'Sự kiện nào đã châm ngòi cuộc Chiến tranh thế giới lần thứ nhất?\r\nTiến trình lịch sử của loài người diễn ra như thế nào?\r\nVận tốc ánh sáng nhanh cỡ nào?\r\nNguyên tử có kích thước bao nhiêu?\r\nLoài cá nào bơi nhanh nhaasrt?\r\nTên của loại thuốc thông dụng nhất là gì?\r\nNão bộ gồm những phần nào?\r\nMặt Trời có kích thước vĩ đại ra sao?\r\nTrái Đất, hành tinh sự sống của chúng ta có cấu tạo như thế nào?', 1, 'moidieucanbietvethegioi.jpg'),
(14, 'Dại Khờ, Đau Đớn, Mong Manh', ' Sumino Yoru', 128000, '\"Sợ tổn thương, Tabata Kaede, cậu sinh viên năm nhất đại học tin rằng một cuộc sống khép mình, không gần gũi quá với ai sẽ giúp cậu bình yên vượt qua những năm tháng đại học. Thế mà trở trêu thay, vừa mới chân ướt chân ráo nhập học, cậu lại đụng trúng Akiyoshi Hisano, cô bạn thích gì nói nấy và luôn nổi bật giữa đám đông. Hai người tựa hồ ở hai thái cực hoàn toàn trái ngược vậy cuối cùng lại đánh bạn với nhau, bởi Tabata nhận ra, Akiyoshi có một trái tim hết mực thuần khiết, hơn bất cứ ai. Và lý tưởng cùng trái tim nhiệt huyết của cô đã cảm hóa cậu. Để rồi Tabata cùng Akiyoshi đã tạo ra Moai, một câu lạc bộ hướng tới lý tưởng.\r\n\r\nMoai mỗi ngày một lớn mạnh, nhưng Akiyoshi của ngày ấy thì lại không còn nữa. Lời nói dối của Akiyoshi như những mũi gai, xuyên thẳng vào trái tim mong manh', 3, 'dai-kho-dau-don-mong-manh.jpg'),
(15, 'Em Sẽ Đến Cùng Cơn Mưa', ' Ichikawa Takuji', 84300, '“Hôm nay là lần đầu tiên chúng m.ình gặp nhau với đôi giầy có cổ và có gót. Cũng phải nói thêm, hôm nay cũng là lần đầu tiên anh thấy em mặc chiếc váy liền màu đỏ sẫm. Lần đầu tiên anh thấy em tô son. Lần đầu tiên anh thấy mái tóc em đung đưa mỗi lần em nghiêng đầu, lần đầu tiên anh cảm thấy bồn chồn không yên khi nói chuyện với em.\r\n\r\nTất cả đều là lần đầu tiên, đến nỗi mà khó tìm được một thứ không phải lần đầu tiên.’’', 3, 'emsedencungconmua.jpg'),
(16, 'Ngôi Nhà Bên Bờ Biển Xanh Thẳm', ' T.J.Klune', 113000, 'Linus Baker là một nhân viên công tác xã hội làm việc tại Sở Phụ Trách Thanh Thiếu Niên Nhiệm Màu. Anh nhận nhiệm vụ xác định xem sáu đứa trẻ “trông có vẻ nguy hiểm” và đang sinh sống tại đảo Marsyas liệu có khả năng mang đến ngày tận thế hay không.\r\nArthur Parnassus là chủ trại trẻ mồ côi. Anh là người yêu thương, quan tâm và sẽ làm bất cứ điều gì để bọn trẻ được an toàn, ngay cả khi điều đó có nghĩa là thế giới sẽ bùng cháy và những bí mật anh muốn giấu kín bị phơi bày.\r\nNgôi nhà bên bờ biển xanh thẳm là một cuốn sách nhẹ nhàng và ngọt ngào, chứa đựng những bài học đời thường mà đôi khi con người quên mất. Rằng những điều bất ngờ nhất, phù hợp nhất sẽ vô tình xuất hiện khi bạn không mong chờ nhất.\r\n“Nhà không phải lúc nào cũng là ngôi nhà nơi ta sống. Đó còn là những người chúng ta lựa chọn để ở bên…”', 6, 'ngoinhabenbobienxanh.jpg'),
(17, 'Nhật Ký Nước Mắt', ' Yong Kim', 67000, '“Seoul và nơi này là hai thế giới hoàn toàn khác nhau.”\r\n\r\nNăm lớp 12, cậu ấm Jeong Min Sik bất ngờ phải theo gia đình từ Seoul chuyển về Mokpo, thành phố ven biển tận cùng phía Nam Hàn Quốc. Cuộc sống ở vùng biển hẻo lánh tưởng sẽ trôi qua vô vị không ngờ lại xáo động ngay từ ngày đầu tiên, khi Min Sik tình cờ gặp và quen Sang Seob trong một cuộc ẩu đả kịch tính.\r\n\r\nTình bạn với nam sinh đầu gấu khét tiếng miền biển Mokpo nảy nở, kéo Min Sik vào những mối quan hệ mới không ít rắc rối. Giữa lúc bận bịu khám phá những trải nghiệm, cảm xúc mới mẻ cùng bao nhận thức lạ lẫm về bản thân, Min Sik không ngờ rằng mình đang dần tiến tới một bước ngoặt, đồng thời cũng là trang đầu tiên của cuốn nhật ký cuộc đời đầy sóng gió…', 5, 'nhatkinuocmat.jpg'),
(18, 'Thần Hổ (Truyện Kinh Dị Việt Nam)', 'Tchya', 50000, 'Lấy óc khoa học mà xét đoán, thì chuyện kể lại sau đây là một câu chuyện hoang đường. Nhưng ai đã từng đọc hết pho Liêu trai và bộ Truyền kỳ mạn lục, ai đã từng ngụ cư dăm bảy tháng trên các miền nước độc rừng thiêng, người ấy đọc truyện này ắt hẳn lấy làm thú vị, cho tôi không phải cố ý đặt ra một tiểu thuyết hão huyền. Phàm các truyện quái dị, huyền hoặc, có tự xưa đến nay, truyện nào cũng phát nguyên ở một hiện trạng – mắt tác giả đã thấy hoặc tai tác giả đã nghe – cũng do sự thực mà ra. Vẫn biết người viết truyện, tựa như cô ả thêu hoa dệt gấm, vẽ vời thêm cho ly kỳ, đẹp đẽ; song câu chuyện không phải chỉ toàn ở trong trí tưởng tượng của văn sĩ mà thôi. Cốt nó vẫn là một việc có thực. Việc đó nhiều khi bởi một trường hợp lạ lùng gây nên, một trường hợp ít người được trải, cho nên ta hay cho là vô lý, hoang đường.', 4, 'thanho.jpg'),
(19, 'Cuộc Sống Rất Giống Cuộc Đời', ' Hoàng Hải Nguyễn', 59000, 'Nếu bạn đang cảm thấy bế tắc trong cuộc sống, cần một ai đó xốc lại tinh thần để tiếp tục chiến đấu với cuộc đời thì chắc chắn không nên bỏ lỡ cuốn sách này. Cuộc sống rất giống cuộc đời sẽ đem lại cho bạn những tiếng cười sảng khoái và những phút giây thư giãn qua từng trang sách.\r\n\r\n\r\nKhông tạo cảm giác ức chế hay nhàm chán với những lối đi cũ mòn của văn chương hoa mĩ. Giọng văn và cách kể của tác giả Hoàng Hải Nguyễn có phần phóng khoáng,  hóm hỉnh, sâu cay và đặc biệt là biệt tài gây cười đặc trưng có một không hai. Từng gây sốt cộng đồng mạng với những bài viết như “Đàn ông tuổi 40, Thư mẫu gửi vợ, Nhật ký của bố, Bây giờ anh định thế nào ?...” ;  anh từng bước xây dựng cho mình một hướng đi độc đáo và tạo được dấu ấn với cá tính riêng biệt,  cuốn sách bạn là tập hợp tất cả những tản văn hay nhất anh góp nhặt trong quãng thời gian “chinh chiến với cuộc đời.”', 5, 'cuocsongratgiongcuocdoi.jpg'),
(20, 'Totto-Chan Bên Cửa Sổ', ' Kuroyanagi Tetsuko', 89000, 'Vừa vào lớp một được vài ngày, Totto-chan đã bị đuổi học!!!\r\n \r\nKhông còn cách nào khác, mẹ đành đưa Totto-chan đến một ngôi trường mới, trường Tomoe. Đấy là một ngôi trường kỳ lạ, lớp học thì ở trong toa xe điện cũ, học sinh thì được thoả thích thay đổi chỗ ngồi mỗi ngày, muốn học môn nào trước cũng được, chẳng những thế, khi đã học hết bài, các bạn còn được cô giáo cho đi dạo. Đặc biệt hơn ở đó còn có một thầy hiệu trưởng có thể chăm chú lắng nghe Totto-chan kể chuyện suốt bốn tiếng đồng hồ! Chính nhờ ngôi trường đó, một Totto-chan hiếu động, cá biệt đã thu nhận được những điều vô cùng quý giá để lớn lên thành một con người hoàn thiện, mạnh mẽ.', 6, 'tottochan_bencuaso.jpg'),
(21, 'Phút Giây Gặp Gỡ Một Đời Bên Nhau', 'Hoa Thanh Thần\r\n', 210000, 'Phút giây gặp gỡ, một đời bên nhau là câu chuyện kể về duyên phận \"trời đánh\" của một bà chủ tiệm áo cưới ba mươi tuổi vẫn chưa chồng Thị Y Thần và anh chàng Lục Thần Hòa. Những tưởng sau một đêm oan gia, họ sẽ không còn duyên nợ với nhau nữa, nào ngờ hai người luôn vô tình gặp mặt trong những lần xem mặt của cô. Họ quyết định giả vờ yêu nhau rồi giả vờ kết hôn để tránh những cuộc sắp xếp mai mối của hai bên gia đình. Thế rồi giả đã hóa thành thật từ lúc nào không biết...', 3, 'phutgiaygapgomotdoibennhau.jpg'),
(22, 'Chuyện Kỳ Lạ Ở Tiệm Sách Cũ Tanabe', ' Miyabe Miyuki', 121000, 'Cuốn sách là một tuyển tập những câu truyện “trinh thám” ngắn liên quan đến hành trình phá án hay đi tìm câu trả lời cho những bí ẩn hay “vụ án” xuất phát hoặc liên quan đến tiệm sách Tanabe nơi lão Iwa làm chủ. Trong suốt những hành trình nhỏ ấy, cả lão Iwa và đứa cháu Minoru của mình đã cho độc giả thấy lần lượt từng lớp lang bản chất con người (cả tiêu cực lẫn tích cực) cũng như mối quan hệ và tình cảm gia đình được thể hiện khéo léo qua những tương tác của hai ông cháu', 6, 'chuyen-ky-la-o-tiem-sach-cu-tanabe.jpg'),
(23, 'Khu Vườn Ngôn Từ', ' Shinkai Makoto', 119350, 'Khu vườn ngôn từ kể về một tình yêu còn xa xưa hơn cả tình yêu.\r\n\r\nKhái niệm tình yêu trong tiếng Nhật hiện đại là luyến hoặc ái, nhưng vào thời xưa nó được viết là cô bi, nghĩa là nỗi buồn một mình. Shinkai Makoto đã cấu tứ Khu vườn ngôn từ theo ý nghĩa cổ điển này, miêu tả tình yêu theo khái niệm ban sơ của nó, tức là cô bi - nỗi buồn khi một mình thương nhớ một người.', 3, 'khuvuonngontu.jpg'),
(24, 'Tam Sinh Tam Thế - Thập Lí Đào Hoa', 'Đường Thất Công Tử', 95000, 'Một người thà say mèm trong rừng đào mười dặm để quên hết quá khứ, một người nặng tình ba đời ba kiếp mòn mỏi đợi chờ.\r\n\r\nBóng hình bắt gặp đó, như đúng như sai. Những chuyện cũ đã quên đó, như hư như thực.\r\n\r\nMười dặm hoa đào chiếu rạng đôi mắt bi thương, nhưng chẳng thể nào quên đi được giây phút trông thấy gương mặt nàng trong quá khứ.\r\n\r\nQuá khứ, hiện tại, tương lai - ba kiếp nhân duyên của Dạ Hoa và Bạch Thiển, giữa mười dặm hoa đào mênh mông thắm sắc, từ nay chỉ còn hạnh phúc ngập tràn.\"', 6, 'tam-sinh-tam-the-thap-ly-dao-hoa.jpg'),
(25, 'Yêu Em Từ Cái Nhìn Đầu Tiên', 'Cố Mạn', 198090, 'Nhắc đến Yêu em từ cái nhìn đầu tiên có lẽ không cần dùng quá nhiều lời, bởi cùng với Sam Sam đến đây ăn nào, Bên nhau trọn đời, Yêu em từ cái nhìn đầu tiên đã làm nên tên tuổi của Cố Mạn tại Việt Nam.\r\n\r\nĐi cùng?\r\n\r\nHai chữ này kéo Vy Vy trở về hiện tại, lập tức hoàn hồn.Nhìn chiếc xe, lại nhìn Đại Thần, người đẹp Vy Vy lắp bắp:\r\n\r\n“Em… em…”\r\n\r\nTiêu Nại hơi cau mày. Vy Vy trấn tĩnh nói:\r\n\r\n“… Anh đèo em?”.\r\n\r\n“Ừ, đường xa thế chẳng lẽ đi bộ?”.', 3, 'yeuemtucainhindautien.jpg'),
(26, 'Rung Động Chỉ Vì Em', ' Nghê Đa Hỉ', 151200, 'Năm mười chín tuổi, bất chấp sự chênh lệch về gia cảnh, học vấn và địa vị xã hội, Tần Hiển và Tô Kiều vẫn say sưa chìm đắm trong mối tình đầu thuần khiết. Đáng tiếc thay, những tự ti, mặc cảm của tuổi trẻ đã khiến hai người bỏ lỡ nhau. Mải miết kiếm tìm, tám năm đau đáu một niềm hy vọng, cuối cùng ông trời cũng run rủi cho anh gặp lại cô. Vẫn là đôi mắt cong cong và nụ cười đẹp đến mê hồn. Tựa như năm xưa, lúc anh thấy cô đứng đợi ngoài cổng trường, lưng tựa vào tường, tươi cười nói với anh “Tôi mời cậu ăn khuya”, anh đã trúng tiếng sét ái tình với cô chính từ khoảnh khắc ấy.\r\nNụ cười của cô đã khiến anh chìm vào bể tình, khiến anh đau khổ, khiến anh khao khát, sẵn sàng trầm luân. Lần này, nếu anh lại bỏ lỡ thì không chỉ là tám năm, mà là một đời. Bởi, cả đời này, trái tim anh chỉ vì cô mà rung động.', 3, 'rung-dong-chi-vi-em.jpg'),
(27, 'Đông Chí', 'Ngưng Lũng', 150150, 'Tám năm trước, Giang Thành Ngật và Lục Yên cùng đắm chìm trong quãng thời gian ngọt ngào của tình yêu tuổi học trò… Cho đến một ngày, Đặng Mạn – bạn thân của Lục Yên bất ngờ nhảy sông tự vẫn.\r\n\r\nTám năm sau, Giang Thành Ngật và Lục Yên gặp lại nhau tại buổi họp lớp trong tâm thế thờ ơ, hững hờ… Cho đến một ngày, Lục Yên vô tình bắt gặp bóng dáng thân quen của Đặng Mạn vào một đêm đông u tối.\r\n\r\nCái chết của Đặng Mạn ẩn chứa những bí mật gì? Và sau khi bức màn bí mật ấy được vén mở, liệu Lục Yên và Giang Thành Ngật có thể tìm lại tình yêu của tám năm về trước hay không?', 3, 'dongchi.jpg'),
(28, 'Bên Nhau Trọn Đời', 'Cố Mạn', 94000, 'Bảy năm trước, vì hiểu lầm và cả sự chen chân của Hà Dĩ Mai mà Triệu Mặc Sênh đau lòng rời bỏ Hà Dĩ Thâm, lên máy bay sang Mỹ. Cô cứ nghĩ rằng anh không đau lòng, là anh đuổi cô đi, mà đâu ngờ cuộc chia ly năm ấy đã trở thành tổn thương khó xóa nhòa trong lòng anh.\r\n\r\nNhiều năm sau, có rất nhiều cô gái để mắt đến Dĩ Thâm, nhưng lòng anh chẳng thể dung chứa ai ngoài cô gái đã mải miết theo đuổi anh suốt một năm ròng ở trường Đại học.\r\n\r\nBảy năm sau gặp lại, cô trở thành nhiếp ảnh gia của một tạp chí, còn anh là luật sư nổi tiếng được nhiều người biết đến. Họ vô tình hội ngộ tại siêu thị, rồi một lần nữa bước vào đời nhau.', 6, 'bennhautrondoi.jpg'),
(29, 'Anh Có Thiếu Người Yêu Không', ' Ngô Đồng Tư Ngữ', 84000, 'An Xuân là một cô gái mũm mĩm, ngây thơ, trong sáng, luôn không tự tin về bản thân và thiếu thốn tình cảm. Cô thường được mọi người gọi với cái tên Am Thuần. Am Thuần đem lòng yêu thích Hạ Đông Giá và ngộ nhận đó là tình đơn phương. Cũng vì yêu Hạ Đông Giá, Am Thuần theo đuổi anh bằng nhiều hành động ngớ ngẩn, nhưng cũng dũng cảm và đáng yêu. Cho đến một ngày, Tứ Trương, bạn thân của Hạ Đông Giá và cũng là bác sĩ khoa truyền nhiễm để ý tới Am Thuần và tấm lòng lương thiện của cô. Tứ Trương âm thầm giúp đỡ cô. Càng ngày, tình cảm của Tứ Trương dành cho Am Thuần càng rõ ràng hơn và tình cảm đó cũng khiến Am Thuần nhận ra tình cảm thật của mình dành cho Tứ Trương. Hai người trở thành người yêu, đồng hành cùng nhau, giúp đỡ và cổ vũ nhau…', 6, 'anhcothieunguoiyeukhong.jpg'),
(30, 'Mandarin Của Tôi', 'Mặc Phi Bảo Phi', 73900, 'Kiểm Biên Lâm và Sơ Kiến là thanh mai trúc mã. Tuy nhiên, Kiểm Biên Lâm đã phải lòng cô bạn hàng xóm này từ rất lâu rồi. Về phần Sơ Kiến, cô chưa từng mở lòng đón nhận tình cảm của anh nhưng cũng không dám đối diện với tình yêu nồng nhiệt của Kiểm Biên Lâm.', 3, 'mandarincuatoi.jpg'),
(31, 'Hình Xăm', 'Bất Vấn Tam Cửu', 150000, '“Hình xăm” là cuốn tiểu thuyết xuất sắc của tác giả Bất Vấn Tam Cửu, từng câu từng chữ đều có thể chạm đến cảm xúc trong lòng độc giả, kể cho chúng ta câu chuyện về một tình yêu khắc cốt ghi tâm. “Muốn anh xăm một hình cho em, em muốn được bên anh suốt quãng đời còn lại.', 6, 'hinhxam.jpg'),
(32, 'Gió Nam Hiểu Lòng Tôi', 'Ngô Đồng Tư Ngữ', 157400, '“Bạn có tin rằng một người đã chết có thể tồn tại bằng một phương thức nào đó hay không?”\r\n\r\nSài Diễm là một luật sư xinh đẹp, tài năng và có cá tính mạnh mẽ. Cô có người bạn thanh mai trúc mã là một bác sĩ nha khoa hài hước và “đáng ghét” Trần Vị Nam. Sài Diễm không hiểu nổi mình sao hồi còn đi học lại đem lòng thầm thích anh được. Lên đại học, sau khi chiến tranh lạnh với Trần Vị Nam, cô viết vào tình sử của mình những trang tình cảm với Trì Thu Thành, một trợ lí huấn luyện viên Taekwondo.', 3, 'gionamhieulongtoi.jpg'),
(33, 'Khó Dỗ Dành', 'Trúc Dĩ', 127100, 'Ôn Dĩ Phàm và Tang Diên từng là bạn học, hai người tình cờ gặp lại nhau trong một quán bar, sau đó lại tình cờ trở thành bạn thuê trọ chung.\r\nChuyện cũng chẳng có gì nếu như hồi còn đi học Ôn Dĩ Phàm chưa từ từ chối tình cảm của Tang Diên.\r\n\r\nThật ra Tang Diên là một người rất cộc cằn, anh có thể gây sát thương bằng lời nói với bất kỳ ai, nhưng anh lại vô cùng dịu dàng với Ôn Dĩ Phàm. Yêu thầm cô suốt sáu năm, tìm đủ mọi cách để lưu giữ hình ảnh của cô trong những năm tháng xa cá Kể cả khi bị cô từ chối, anh vẫn âm thầm dõi theo cô từ xa.', 6, 'khododanh.jpg'),
(34, 'Gió Ngừng Thổi, Tình Còn Vương', ' Diệp Lạc Vô Tâm', 62300, 'Tình là thứ động lòng người nhất, nàng tên là Mạc Tình nhưng cả đời lại khổ vì tình.\r\n\r\nChàng tên là Tần Phong - Gió là thứ vô tình nhất nhưng lại vì tình mà dừng bước, cuối cùng tan biến trong không khí\r\n\r\nNgười trong nhân thế đều biết tình ái nơi cõi trần là điều đau khổ nhưng có bao nhiêu người thực sự hiểu thấu được nó? Nếu đã bước vào hồng trần, chi bằng hãy dốc hết lòng mà yêu. Bất luận là tình sâu hay duyên mỏng, chỉ mong đời này không hối hận.', 6, 'giongungthoitinhconvuong.jpg'),
(35, 'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ', 'Cảnh Thiên', 81180, 'Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một công ty nổi tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng rằng khởi nghiệp xong sẽ lập tức nhận được tiền đầu tư, cầm được tiền đầu tư là sẽ niêm yết trên sàn chứng khoán. Mơ mộng rằng muốn gì sẽ có đó, không thiếu tiền cũng chẳng thiếu tình, an hưởng những năm tháng êm đềm trong cuộc đời mình. Nhưng vì sao bạn lại nghĩ rằng bạn chẳng cần bỏ ra chút công sức nào, cuộc sống sẽ dâng đến tận miệng những thứ bạn muốn?', 5, 'dungluachonannhankhicontre.jpg'),
(36, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', ' Rosie Nguyễn', 54000, '“Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\n\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\n\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\n\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\n\r\nVì sau tất cả, chẳng ai quan tâm.”\r\n\r\n“Tôi đã đọc quyển sách này một cách thích thú. Có nhiều kiến thức và kinh nghiệm hữu ích, những điều mới mẻ ngay cả với người gần trung niên như tôi.\r\n\r\nTuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI.', 5, 'tuoitredanggiabaonhieu.jpg'),
(37, 'Khi Hơi Thở Hóa Thinh Không', ' Paul Kalanithi', 73200, 'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.', 1, 'khihoithohoathinhkhong.jpg'),
(38, 'Lịch Sử Thế Giới Qua Truyện Tranh', 'Pascale Bouchié', 227500, 'Hơn 400 trang sách là 60 câu chuyện kể về 15.000 năm lịch sử được chia thành từng thời kỳ lớn: Tiền sử, Cổ đại, Trung đại, Phục hưng, Hiện đại, thế kỷ 19, và từ thế kỷ 20 đến nay; gắn với mỗi câu chuyện là những biểu đồ niên đại, các bản đồ, các hình ảnh minh họa cùng nhiều thông tin súc tích và hữu ích giúp bạn đọc dễ dàng khám phá Lịch sử vĩ đại của nhân loại, với các nền văn minh cổ đặc sắc, các sự kiện nổi bật cùng những nhân vật ghi dấu ấn lớn trong thời đại của họ.', 8, 'lichsuthegioiquatruyentranh.jpg'),
(39, '999 Lá Thư Gửi Cho Chính Mình', ' Miêu Công Tử', 66330, 'Cuộc sống đầy cạnh tranh và đố kị, dường như cả xã hội đều kỳ vọng bạn trở thành một người thật hoàn hảo, thật có ích để có thể cống hiến càng nhiều càng tốt. Nhưng bạn biết không, bạn chẳng cần phải kiệt sức để biến mình trở thành một người vẹn toàn trong mắt bất cứ ai, chỉ cần bản thân bạn vẫn cố gắng và kiên trì nỗ lực không ngừng nghỉ để trở thành người mà chính bạn mong muốn là đủ. Bạn cũng chẳng cần phải làm hài lòng tất cả thế giới này, chẳng cần tất cả mọi người yêu quý, chỉ mong những người thân của bạn thấu hiểu, tin tưởng và ủng hộ, chỉ cần bản thân bạn tự yêu thương lấy chính mình vậy thôi.', 5, '999lathuguichochinhminh.jpg'),
(40, 'Điều Đẹp Nhất Có Khi Là Buông Tay', ' Thought Catalog', 44640, '“Những điều được định sẵn là dành cho bạn sẽ đến với bạn, ngay cả khi nó bị chôn vùi dưới hai ngọn núi. Những điều không được định sẵn là dành cho bạn sẽ không đến với bạn, cho dù nó nằm ngay giữa hai đầu môi bạn.”\r\n\r\nThought Catalog là một nhóm tác giả nổi tiếng tại Mỹ, với những câu chuyện giúp bạn đi sâu hơn vào phần yếu mềm bên trong trái tim của mình, ôm ấp nỗi cô đơn và khiến bạn mạnh mẽ rời bỏ những điều, những người làm bạn đau.\r\n\r\n“Điều đẹp nhất có khi là buông tay” như một cái chạm, để bạn thốt lên lời tạm biệt đúng lúc', 5, 'dieudepnhatcokhilabuongtay.jpg'),
(41, 'Tịch Mịch', ' Phỉ Ngã Tư Tồn', 72400, 'Ngày quanh quẩn sắp tối, quyết định quay người về. Cắn tay, xé vạt váy, gửi gắm một bức thư. Một tấc lụa đáng thương, từng chữ thẫm màu máu. Chữ chữ ý xót xa, một lòng luôn không đổi. Phu quân nếu nhận thiếp, thiếp cam chịu trăm roi. Nếu không, xin nguyện chết, để chôn trên đất quân. Hóa thành đoạn trường hoa, cũng sẽ mọc đất này.', 6, 'tichmich.jpg'),
(42, 'Một Kiếp Tương Phùng', ' Lan Nhược Nhất', 124600, '“Một kiếp tương phùng” là câu chuyện về cuộc đời và tình yêu của ba cô gái trẻ. Thường Uyển là một nữ bác sĩ tâm lý, vì tuổi trẻ bồng bột nên đã lỡ có con với một người lạ mới quen, ký vào bản hợp đồng hôn nhân với anh ta và gần như phải làm mẹ đơn thân suốt 6 năm trời.\r\nChương Hàm là cô tiểu thư nhà giàu ngây thơ, trong sáng. Bố mẹ cô ly hôn đã lâu, người bố bỏ đi nước ngoài, còn mẹ cũng đi bước nữa, cô cô đơn trong chính gia đình từng rất thân thương của mình nên quyết định chuyển ra ngoài, mở một tiệm bánh nhỏ chứ nhất định không tiếp quản cơ nghiệp của bố mẹ.', 6, 'motkieptuongphung.jpg'),
(43, 'Điều Kỳ Diệu Của Tiệm Tạp Hóa Namiya', 'Keigo Higashino', 99950, 'Một đêm vội vã lẩn trốn sau phi vụ khoắng đồ nhà người, Atsuya, Shota và Kouhei đã rẽ vào lánh tạm trong một căn nhà hoang bên con dốc vắng người qua lại. Căn nhà có vẻ khi xưa là một tiệm tạp hóa với biển hiệu cũ kỹ bám đầy bồ hóng, khiến người ta khó lòng đọc được trên đó viết gì. Định bụng nghỉ tạm một đêm rồi sáng hôm sau chuồn sớm, cả ba không ngờ chờ đợi cả bọn sẽ là một đêm không ngủ, với bao điều kỳ bí bắt đầu từ một phong thư bất ngờ gửi đến…', 3, 'dieukidieucuataphoanamiya.jpg'),
(44, 'Mình Có Nợ Nhau Từ Kiếp Trước', ' Tào Đình', 77400, 'Dường như không phải cô ấy bị thế giới này bỏ rơi mà chính cô ấy mới là người bỏ rơi thế giới này. Nắng mưa gió bão thì có liên quan gì tới cô ấy? Năm mới lễ tết có liên quan gì tới cô ấy? Cô ấy nhìn tôi bằng một ánh mắt đầy nghi hoặc, nghi ngại về lòng thương hại mà tôi dành cho cô ấy. Nhưng sự cô đơn và đau khổ của cô ấy, dù có khéo đến mấy cũng không thể che giấu hết được.\r\nCái cô bé ngốc nghếch này! Tôi ôm cô ấy chặt hơn. Cô gái phiêu bạt cả cuộc đời này, đã không còn chỗ nào để đi nữa rồi. Giây phút được ôm cô ấy vào lòng, đó là một cảm giác vui mừng thê lương đầy do dự, đó là cây cỏ dài dặc uyển chuyển liên tiếp trong lòng, mềm mại như những sợi tơ mỏng manh, vương vấn', 6, 'minhcononhautukieptruoc.jpg'),
(45, 'Thợ Xăm Ở Auschwitz', ' Heather Morris', 109000, 'Thợ xăm ở Auschwitz là một tài liệu khác thường, được công bố hơn bảy mươi năm sau những sự kiện nó thuật lại, và nó nhắc nhở chúng ta rằng có rất nhiều câu chuyện sẽ mãi mãi không bao giờ được kể. Nó cũng nhắc chúng ta nhớ rằng trong số nạn nhân lớn đến không tưởng tượng nổi của Holocaust, mỗi người đều là một cá nhân với một câu chuyện độc nhất vô nhị… Và câu chuyện này là một câu chuyện khác thường, thậm chí là so với những câu chuyện về Holocaust nói chung - bởi nó cảm động, thẳng thắn và nâng cánh cho tâm hồn, và dĩ nhiên nó là một cánh cửa sổ để nhìn vào sự kiện khủng khiếp bậc nhất trong lịch sử loài người. ', 6, 'thoxamoauschwitz.jpg'),
(46, 'Chúc Ngủ Ngon Rồi Lại Càng Nhớ Anh Hơn', ' Alan Chen', 84600, 'Khi bắt đầu một tình yêu, ai cũng đều sẽ trải qua cảm giác đầu tiên chính là rung động. Giai đoạn này có lẽ là thời điểm hạnh phúc nhất, nhưng cũng đau khổ nhất đối với người “shay nắng” trước. Tất cả mơ mộng, tất cả suy nghĩ đều dồn về người đó, nghĩ cách để bước vào thế giới của anh , mơ về những giây phút được gọi điện thăm hỏi, được nói chuyện kể nhau nghe những câu chuyện hằng ngày,\r\nCâu chuyện tình yêu trong tưởng tượng sao lại hạnh phúc đến thế, giản đơn đến vậy? Nhưng cũng chỉ có họ mới biết được những thấp thỏm âu lo mỗi khi đêm về… Liệu rằng anh hiểu tình cảm của em? Liệu rằng anh có phiền lòng trước những cảm xúc thất thường này? Liệu rằng anh có yêu em…', 3, 'chucngungonroilaicangnhoanh.jpg'),
(47, 'Tôi Thích Bản Thân Nỗ Lực Hơn', 'Chu Xung', 80400, '“Một là không có bối cảnh, hai là không có tiền, ba là không có mối quan hệ, chỉ có thể trông cậy vào chính mình”. Nếu bạn đã từng có ý nghĩ như vậy, thì một cuốn sách như “Tôi thích bản thân nỗ lực hơn” chính là tiếng lòng dành cho bạn.\r\nBạn có từng bị ngăn cấm, bị coi là gàn dở khi từ bỏ một công việc “ ổn định, nhàn hạ” để theo đuổi thứ gọi là “đam mê” mà bạn chấp nhận đánh đổi bằng bất cứ giá nào? Thất bại ư? Nhưng nếu bạn thực sự thành công như tác giả của cuốn sách này', 5, 'toithichbanthannoluchon.jpg'),
(48, 'Yêu Sai Cách Nên Mãi Chẳng Đúng Người', 'Night-fly', 62000, 'Có người trải qua hàng chục mối tình cũng không đọng lại gì. Lại có kẻ chỉ lướt qua vài mảnh yêu đương đã tích góp đủ cung bậc tình ái.\r\nCó người yêu hết người này tới người kia vẫn mạnh mẽ yêu tiếp tràn đầy nhiệt huyết. Lại có kẻ mới thất bại đôi ba lần đã sợ hãi mà chẳng dám mở lòng thêm.\r\nCó người kết thúc một mối tình bình thản, nhẹ nhõm. Lại có kẻ tổn thương mãi không sao tự chữa lành.', 3, 'yeusaicachnenmaichangdungnguo.jpg'),
(49, 'Mẹ Làm Gì Có Ước Mơ', 'Hạ Mer', 62700, '“Ước mơ của mẹ là gì?”\r\n“Thì cho chúng mày ăn học đàng hoàng, đầy đủ để mai sau đỡ khổ.”\r\n“Không, ước mơ khác cơ.”\r\n“Mai sau chúng mày lập gia đình, chọn được đúng người, vợ chồng yêu thương nhau.”\r\n“Ước mơ dành riêng cho bản thân mẹ cơ mà.”\r\n“MẸ THÌ LÀM GÌ CÓ ƯỚC MƠ.”\r\nBạn có bao giờ hỏi ước mơ của bố mẹ là gì? Hoặc dù có hỏi bố mẹ cũng chỉ trả lời qua loa như “Làm gì có…”. Nhưng bạn biết không, làm gì có ai trên thế giới này không có ước mơ cơ chứ, chỉ là ước mơ của bố mẹ chúng ta được cất giấu rất sâu trong tim và đánh đổi bằng nụ cười của những đứa con mà thôi.', 7, 'melamgicouocmo.jpg'),
(50, 'Có Một Ngày, Bố Mẹ Sẽ Già Đi', 'Nhiều tác giả', 66700, 'Càng lớn lên, những quyến luyến của chúng ta đối với bố mẹ càng ít. Khi đại bàng non có thể giương cánh, nó luôn hướng tới không trung, chứ không phải rúc vào đôi cánh bố mẹ.\r\nBạn khát vọng cuộc sống khởi sắc, không còn quẫn bách giật gấu vá vai. Bạn khát vọng sự nghiệp tiến triển, như thế mới không uổng bao năm vất vả tăng ca bất kể gió mưa. Bạn khát vọng con cái của mình về sau có thể lớn lên vui vẻ khỏe mạnh, đạt được thành tích đáng tự hào, vươn lên trong môi trường cạnh tranh quyết liệt… Nhưng bạn lại vô tình đặt một khát vọng khác nằm sâu trong tâm hồn xuống vị trí dưới cùng, khát vọng này chính là hy vọng bố mẹ đừng vội già đi.', 7, 'comotngaybomesegiadi.jpg'),
(51, 'Chỉ Về Nhà Để Ngủ', 'Minh Nhật', 62900, '“Trong tiểu vũ trụ của mỗi người, thứ năng lượng quan trọng nhất không phải vật chất, mà là cảm giác của sự tồn tại, khát khao thấy mình có ý nghĩa, hoặc những gì mình làm trở nên ý nghĩa”\r\n“Chỉ về nhà để ngủ” của Minh Nhật như một trạm cấp “vé du hành” miễn phí, để mỗi người đều có cơ hội khám phá sâu vào vũ trụ bản thân.\r\nThông qua những câu chuyện hiện thực gần gũi, cùng chất văn mang đậm dấu ấn Minh Nhật - rất riêng và đầy cảm xúc, Chỉ về nhà để ngủ dễ dàng \"chạm\" đến sự “đồng cảm” nơi trái tim độc giả, giúp ta thoát khỏi vòng xoay vội vã của cuộc sống, sống chậm lại, gom mạnh mẽ và đưa ta về với một khoảng lặng đủ để thấy nhẹ nhõm và bình yên.', 7, 'chivenhadengu.jpg'),
(52, 'Các Hành Tinh', 'Maggie Aderin-Pocock', 594000, 'Một quyển sách chứa đầy những thông tin, hình ảnh sắc nét như đem chính chúng ta tới những miền hẻo lánh, xa xôi nhất của Hệ Mặt trời. Nó cho chúng ta thấy được quang cảnh chi tiết và đem đến cho chúng ta những thông tin mới mẻ nhất về các đặc điểm địa hình, địa chất, khí quyển, các suy đoán cùng toàn bộ lịch sử phát hiện và thám hiểm những thiên thể xa xôi mà con người đã, hoặc chưa thể với tới.', 1, 'cachanhtinh.jpg'),
(53, 'Bản Đồ (Bản Thông Thường)', ' Aleksandra Mizielińska', 250000, 'Hãy khám phá thế giới cùng cuốn bản đồ khổng lồ đầu tiên ở Việt Nam! Sách gồm 52 tấm bản đồ minh họa sinh động các đặc điểm địa lý và biên giới chính trị, giới thiệu những địa điểm nổi tiếng, những nét đặc trưng, về động vật và thực vật bản địa, về con người địa phương, các sự kiện văn hóa cùng nhiều thông tin hấp dẫn khác.', 1, 'bando.jpg'),
(54, 'Atlas Thế Giới', ' Valérie le Du', 128000, 'Phần đầu cuốn sách, các em sẽ được tìm hiểu các thông tin chung về trái đất, địa hình và cảnh quan, khí hậu và đời sống, các loài động vật trên thế giới, biển và đại dương, các dân tộc và công trình di tích. Tiếp đó, các em cùng du hành vòng quanh thế giới, đi từ Tây Âu sang Đông Âu, đến Bắc Mỹ, Nam Mỹ, sang châu Á, châu Phi rồi tới châu Đại Dương và kết thúc ở Xứ lạnh gồm Bắc cực và Nam cực. Cuối cùng, các em sẽ được tham gia các lễ hội và tìm hiểu các phong tục trên thế giới', 1, 'atlasthegioi.jpg'),
(55, 'Ma Quỷ Dân Gian Ký', ' Duy Văn', 268000, 'Tác phẩm là một bộ sách du khảo tập hợp các loài ma quỷ và hiện tượng tâm linh trong văn hoá truyền miệng ở Việt Nam, được chia làm các chương nhỏ, đi kèm với tranh vẽ theo phong cách dân gian hiện đại. Mỗi chương sẽ gồm một chủ đề, với minh hoạ sống động và những thông tin đầy đủ về định nghĩa, đặc tính và niềm tin dân gian về các loại ma quỷ. Cuối sách là phần phụ lục các sáng tác thơ truyện liên quan đến ma quỷ dân gian', 4, 'maquydangianky.jpg'),
(56, 'Ai Hát Giữa Rừng Khuya', 'Tchya', 66500, 'Tiểu thuyết “Ai hát giữa rừng khuya” là một trong những tác phẩm văn học kinh dị nổi tiếng nhất của Việt Nam. Tiểu thuyết của nhà văn TchyA (tên thật là Đái Đức Tuấn) kể về đời hồng nhan bạc phận của nàng đào kép Oanh Cơ. Mồ côi cha mẹ từ nhỏ sống cùng anh và chị. 3 anh chị em đùm bọc nhau, sống bằng nghề đàn hát. Mong có cơ hội đổi đời, họ cùng nhau dấn thân vào vùng rừng thiêng nước độc. Định mệnh khiến họ phải xa lìa nhau, chỉ còn lại tiếng đàn ai oán của Huyền Cơ còn vang vọng', 4, 'aihatgiuarungkhuya.jpg'),
(57, 'Ngàn Năm Chờ Đợi ', ' Diệp Lạc Vô Tâm', 76000, 'Chàng là Tuế Tinh chân quân – Thanh Ngưng, chính là ngôi sao sáng ở phương đông. Chàng có thể tạo ra vạn vật thế gian, biến khổ thành phúc, được người đời kính ngưỡng, cúng bái thờ phụng.\r\nChàng sống cô đơn cả ngàn năm trên trời, công việc chủ yếu của chàng là giúp đỡ mọi người, có một người bạn cờ là Thái Bạch Kim Tinh.\r\nMột hôm chàng thấy các tiên nữ đang dùng bùn đất để nặn hình người. Chàng đã chọn đống bùn đất có màu sáng nhất để cẩn thận nặn nặn tạc tạc. Chàng nặn rất lâu, rất nhiều lần cuối cùng nặn ra hình dáng một cô gái xinh đẹp hoàn mỹ nhất trong lòng chàng.', 6, 'ngannamchodoi.jpg'),
(58, 'Xin Lỗi Anh Nhận Nhầm Người', ' Cố Tây Tước', 112650, '\"XIN LỖI, ANH NHẬN NHẦM NGƯỜI!\" - THANH XUÂN ĐÃ QUA, NHƯNG NGƯỜI SẼ TRỞ LẠI\r\nNhiều năm trước, cô thiếu nữ Hứa Tranh Thanh đã gửi tới chàng thiếu niên họ Tô một bức thư, nhưng không có hồi đáp.\r\nCô của thời thiếu nữ hay mộng mơ, từ lúc biết đến chàng trai đó, đến khi anh quay lưng rời đi, tính ra còn chưa được hai mươi ngày.\r\nKhi ấy, cây anh đào nở hoa bên trường kịch còn chưa kịp tàn, vậy mà trong hai mươi ngày đó thôi, cô đã nghĩ xong việc họ ở bên nhau đến đầu bạc răng long. Chỉ tiếc là một lá thư gửi đi cũng theo anh biến mất, để trái tim thiếu nữ của cô cũng vỡ tan thành từng mảnh.', 3, 'xinloianhnhannhamnguoi.jpg'),
(59, 'Nơi Nào Đông Ấm, Nơi Nào Hạ Mát\r\n', 'Cố Tây Tước', 128000, 'Vì em nên anh mới suy tính thiệt hơn như thế. An Kiệt, chúng ta đã bắt đầu rồi đúng không, chí ít anh nghĩ là em đã cho phép anh bắt đầu, vậy nên từ nay trở đi anh sẽ không bao giờ buông tay. Anh không cảm thấ quá nhanh à?\r\nKhông. E có thể không cần phải đáp lại. Nhưng xin đừng cự tuyệt anh, cho dù thế nào, cũng xin đừng cự tuyệt! Tôi có thể nói là anh đang ép buộc tôi không?\r\nAnh sẽ không ép em, cũng không thử thay đổi cuộc sống hay quan niệm sống của em, con người em hiện giờ đã là một món quà với anh rồ Anh chỉ hy vọng em có thể đáp lại anh, dù chỉ một chút thôi, đừng để anh có cảm giác mình đang độc diễn', 6, 'noinaodongamnoinaohamat.jpg'),
(60, 'Tháng Năm Có Anh , Ký Ức Thành Hoa', 'Cố Tây Tước', 80100, 'Mỗi người sinh ra trên đời này đều mang riêng mình một số mệnh, số mệnh của anh là để bảo vệ em. Thế nhưng, anh không phải là một thiên thần, không thể xuất hiện bên cạnh em bất cứ lúc nào em cần tới, vậy nên anh chỉ biết đứng nhìn em từ xa, lặng lẽ đi sau lưng em, lặng lẽ bảo vệ em tránh xa khỏi những điều bất trắc. Cho tới ngày em mỉm cười, hỏi anh có yêu em không, anh thật ngốc khi không đủ can đảm để trả lời rằng có, anh sợ mình sẽ chẳng mang đến điều gì tốt đẹp. Nhưng rồi rất nhanh sau đó, khi hằng ngày không còn được nhìn thấy em cười, anh lại không thể giả vờ lạnh lùng được nữa, bởi từ lâu, cuộc sống của anh đã không thể thiếu vắng em nữa rồi.', 3, 'thangnamcoanhkiucnohoa.jpg'),
(61, 'Yêu Đúng Lúc, Gặp Đúng Người', 'Cố Tây Tước', 98000, 'Một câu chuyện ấm áp đáng yêu khiến tất cả mọi người đều vui vẻ. Một câu chuyện đáng yêu khác tiếp nối sau “All in love” của Cố Tây Tước. Cuốn sách được biết đến với tên trân mạng “ĐÚNG NGƯỜI, ĐÚNG THỜI ĐIỂM”.\r\n“Đúng thời điểm, gặp đúng người, không phải là rung động mãnh liệt, mà là yên bình vĩnh cửu.”\r\nCó người nói, Giang An Lan lạnh lùng cao ngạo, vênh váo coi trời bằng vung; Có người nói, trêu trời chọc đất cũng tuyệt đối không được chọc vào Giang An Lan, bởi vì anh ta luôn có thể khiến bạn hối hận chỉ mong làm lại từ đầu; Có người nói, Giang An Lan, đến cả “mặt dày” cũng là đẳng cấp đại thần', 3, 'yeudunglucgapdungnguoi.jpg'),
(62, 'Khởi Đầu Mới Từ Bữa Cơm Nhà', 'Cocomi', 72250, 'Bầu trời cao xanh của làng quê trải dài bất tận.\r\nMitsuomi lớn lên ở chốn làng quê ấy, còn Yamato sinh ra ở Tokyo nhưng không có người thân thích, và cậu được nhận làm con nuôi rồi chuyển đến miền quê này. Hai người không biết từ lúc nào bị thu hút bởi nhau, lấp đầy khoảng trống trong nhau và trở thành 1 sự tồn tại đặc biệt với đối phương.\r\nNhưng chúng ta là bạn? Hay người yêu? Hay là gì khác đây…?\r\nHãy cùng tìm kiếm hình dạng sự hạnh phúc của hai người họ trong phần 2 của “Khởi đầu mới là trở về nhà” nhé.', 8, 'khoidautubuacomnha.jpg'),
(63, 'Nối Tiếp Mối Tình Đầu ', 'Hidaka Shoko', 75650, 'Nishina có công việc ổn định ở một công ty lớn, nhưng sau cuộc hôn nhân đổ vỡ, anh cảm thấy cuộc sống chỉ có công việc dần trở nên trống rỗng. Một ngày, anh vô tình hẹn gặp đồng nghiệp tại quán cà phê của Miyama, một người bạn thời cấp ba. \r\nCuộc gặp gỡ đầy tình cờ kéo cả hai trở về với miền kí ức của những tháng ngày thanh xuân đầy ắp kỉ niệm. Trái ngược với Nishina có vẻ hoài niệm khi gặp lại người bạn một thời gắn bó sau 10 năm xa cách, Miyama lại tỏ ra thờ ơ, thậm chí cố tình ra vẻ như không nhớ gì, mặc cho trong quá khứ cả hai đã có một mối quan hệ trên mức tình bạn', 8, 'noitiepmoitinhdau.jpg'),
(64, 'Doraemon Truyện Màu', ' Fujiko F Fujio', 47100, '“Doraemon tuyển tập tranh truyện màu” ra mắt độc giả dựa trên nguyên tắc tuyệt đối trung thành với bản thảo gốc. Vì thế trong truyện có phần in màu, có phần chỉ in hai màu đỏ - đen, và có cả những trang đen trắng. “Tuyển tập tranh truyện màu” sẽ giúp độc giả khám phá rộng hơn, sâu sắc hơn về thế giới của chú mèo máu Doraemon.', 8, 'doraemon.jpg'),
(66, 'Trạng Quỳnh', ' Kim Khánh', 12500, 'Truyện lấy bối cảnh vào thời chúa Nguyễn, dưới thời chúa Nguyễn Phúc Khoát, nhưng những sự kiện xảy ra trong truyện không trùng lặp với những sự kiện xảy ra trên thực tế. Tác phẩm này ban đầu kể lại về cuộc đời của Trạng Quỳnh - một người có tính cách trào phúng dân gian Việt Nam. Trong truyện này, Trạng Quỳnh vốn thông minh từ trong bụng mẹ.\r\nTrước khi cậu sinh ra, một lần bà mẹ ra ao giặt đồ, bỗng nhìn thấy một chú vịt, bà mẹ liền ngâm câu thơ, và lập tức có tiếng đối đáp lại trong bụng vịt.', 8, 'trangquynh.jpg'),
(67, 'Chàng Metalhead Nhà Bên', ' Mamita', 92200, 'Kento đã được anh chàng Metalhead nhà bên cưu mang trong một đêm đông buốt giá. Kể từ đó, họ trở thành bạn bè và bắt đầu dùng bữa cùng nhau. Dần dà, Kento nhận ra tình cảm mình có sự thay đổi và cố gắng đẩy anh ấy ra xa. Song…\r\n\"Thoắt cái, mùa đông thứ hai đã trôi qua. Và cứ vậy, dù mùa xuân tới, hạ sang, thu đến, và cả mùa đông sắp về, chúng tôi vẫn luôn bên nhau.\"', 8, 'changmetalheadnhaben.jpg'),
(68, 'Làm Dâu Nhà Sói ', 'Hana Inu', 57300, 'Tộc sói có một truyền thống được gọi là “hóa dâu”.\r\nKaede thuộc tộc thỏ đã vì ngôi làng của mình mà đi làm dâu cho một gia đình danh giá của tộc sói. Mặc dù tức giận vì cuộc hôn nhân chẳng khác nào lễ hiến tế này, nhưng với bản tính quyết chiến, Kaede đã thẳng thắn đối mặt với vị hôn phu của mình. Vậy mà Ren, cậu trai nối dõi của nhà sói chỉ đáp lại bằng thái độ lạnh lùng và cộc lốc. Đã thế, ngay sau khi đến nơi Kaede được biết, “Cậu phải thay đổi thể chất của mình để có thể kết đôi với chủng loài khác.” Sau đó, cậu bị bắt uống một loại thuốc có tên gọi là “Thuốc hóa dâu”. Thế là kì “hóa dâu” đã bắt đầu và sẽ kéo dài suốt 1 tháng cho đến ngày cử hành hôn lễ chính thức…', 8, 'lamdaunhasoi.jpg'),
(69, 'Khi Bạn Vừa Bận Vừa Đẹp Còn Sợ Chi Được Mất', ' Lương Sảng', 81500, '“Khi bạn vừa bận vừa đẹp, còn sợ chi được mất” chính là điều mà mỗi người chúng ta nên tự suy nghĩ, bởi vì trên thế giới này, có rất nhiều người đang tự dằn vặt chính bản thân mình vì nỗi lo được mất.\r\nKhi bạn đã theo đuổi trạng thái “vừa bận vừa đẹp”, bạn làm gì còn thời gian để lo được lo mất?\r\nBận rộn không chỉ để nói về công việc, mà còn là sự tập trung cao độ trong khi làm việc, là sự bận rộn “chất lượng cao”\r\nXinh đẹp không chỉ nói về ngoại hình, mà còn là sự kết hợp hài hòa giữa làm việc và nghỉ ngơi thư gian trong cuộc sống, là cái đẹp toàn diện.', 5, 'khibanvuabanvuadepconsochi.jpg'),
(70, 'Nuốt Ngược Nước Mắt Để Trưởng Thành Hơn', ' Tiểu Quỹ', 90000, '“Đằng sau những tiếng lòng ngần ngại muốn nói lại thôi, những mâu thuẫn sợ người ta nhìn thấy, lại sợ người ta không nhìn thấy, những ngông cuồng không sợ trời chẳng sợ đất, luôn có một người khiến lòng dạ bạn ngổn ngang trăm mối, chẳng thể lắng dịu.’\r\nTrước kia, đọc tác phẩm của Lỗ Tấn, tôi thường không thể hiểu trọn vẹn.\r\nNhiều năm về sau đọc lại, tôi đã hiểu được nhiệt huyết hừng hực, chính nghĩa chân thành, trái tim hướng về phía tươi sáng của một người thiếu niên.\r\nNgười ấm áp, chẳng qua là sau khi nhìn thấu mặt tối tăm của nhân tính, vẫn lựa chọn bước về phía có ánh sáng.', 3, 'nuotnuocmatdetruongthanhhon.jpg'),
(71, 'Một Người Phụ Nữ ', 'Annie Ernaux', 57000, '“Tôi sẽ không còn nghe thấy giọng nói của bà nữa. […] Tôi đã đánh mất sợi dây nối cuối cùng với thế giới xuất thân của mình.”\r\nẤy là cảm giác của Annie Ernaux khi thực sự nhận ra mẹ mình không còn trên cõi đời. Và bà gắng đi tìm lại những gương mặt khác nhau của người mẹ ấy, một người phụ nữ vốn rất khỏe, xông xáo, cởi mở, qua đời ngày 7 tháng Tư năm 1986, sau một thời gian mắc bệnh Alzeimer. Qua sự tái hiện cuộc đời một nữ công nhân, rồi chủ hàng thực phẩm luôn lo âu về địa vị và học hỏi không ngừng, Annie Ernaux cũng cho ta thấy sự tiến triển cũng như tính hai mặt của những tình cảm mà một người con gái dành cho mẹ: tình yêu, lòng thù ghét, sự âu yếm, cảm giác tội lỗi và cuối cùng là sự gắn bó máu thịt với người đàn bà già cả đã sa sút trí tuệ. ', 5, 'motnguoiphunu.jpg'),
(72, 'Lý Do Để Sống Tiếp', ' Matt Haig', 83500, 'Cuốn hồi ký về quãng thời gian vượt qua trầm cảm của Matt Haig, tác giả Thư viện nửa đêm và Làm sao dừng lại thời gian.\r\nỞ tuổi 24, trong khi chịu đựng một cơn trầm cảm nặng nề, Matt Haig đã nghĩ đến việc chấm dứt đời mình. Thế nhưng, đứng bên bờ vực thẳm, đã có những điều giữ anh lại với cuộc đời. Lý do tiếp tục sống là câu chuyện chân thật về hành trình từng phút, từng ngày anh vượt qua căn bệnh, nhờ vào việc đọc, việc viết, nhờ vào tình yêu của cha mẹ cùng người bạn gái Andrea, mà nay đã trở thành vợ anh.', 5, 'lidodesongtiep.jpg'),
(73, 'BTS: Ước Mơ Không Chờ Đợi Ai', 'Shifra Lushka', 169000, 'Cuộc sống không bao giờ là chắc chắn và ước mơ cũng sẽ không chờ đợi ai khi bạn không cố gắng hết mình để theo đuổi. BTS đã nỗ lực không ngừng nghỉ từ con số không để cuối cùng đạt được thứ mà họ chưa từng mường tượng ra trước đó. Giống như bất kỳ ai trên thế giới này, BTS cũng chỉ là những con người bình thường, khả năng cộng hưởng với thế hệ trẻ luôn được họ truyền tải một cách nhuần nhuyễn trong các bài hát, cho dù đó là góc nhìn cá nhân, quan điểm chính trị dưới hình thức phê bình hay khía cạnh tạo động lực, hoặc bất kể điều gì. Mỗi ngày qua đi, chúng ta đều đấu tranh với những điều khác nhau, “rơi xuống” từ những độ cao khác nhau và cảm thấy nỗi đau tăng dần theo cấp độ. Thế nhưng, dù chúng ta gặp phải điều gì đi chăng nữa, chỉ cần học cách yêu bản thân rồi mọi chuyện đều sẽ ổn. BTS đã tự lên tiếng cho chính bản thân họ - cũng là thế hệ của chúng ta, dù điều đó chẳng dễ dàng chút nào, nhưng sẽ không có “quả ngọt” nếu như không nỗ lực. ', 5, 'btsuocmokhongchodoiai.jpg'),
(74, ' Sức Mạnh Của Ngôn Từ', 'Shin Dohyeon', 71400, 'Kỹ năng giao tiếp là một trong những kỹ năng sống vô cùng quan trọng, tuy nhiên đôi khi chúng ta lại không mấy để ý tới chúng. Để đạt được điều bạn mong muốn, ngôn từ chính là chiếc chìa khóa đầu tiên. Sức mạnh của ngôn từ có thể đưa bạn từ sự vui sướng tột độ đến tâm trạng tụt dốc, buồn đau,chán nản. Cuộc sống của bạn sẽ trở nên tốt đẹp và hạnh phúc hơn nếu thấu hiểu được ẩn ý và cách sử dụng khéo léo và linh hoạt ngôn từ trong giao tiếp', 5, 'sucmanhcuangontu.jpg'),
(75, 'Nằm Nghe Gió Thổi Sau Hè', 'Hải Dương', 94000, 'Nằm nghe gió thổi sau hè xoay quanh câu chuyện tuổi thơ của nhân vật Mận với những kỷ niệm về trái sim tím căng mọng, bông dủ dẻ vàng ươm, chùm lá sương sâm xanh mướt, hay những ngày rong ruổi trên cánh đồng với con diều giấy…\r\nNhững ký ức về chiếc bánh xèo trong “gian hàng tự phát” của bà mà “ba vị khách quen” mua bằng tiền là những chiếc lá cải, chiếc bánh ít lá gai hiếm hoi ba làm trong những ngày gia đình còn khó khăn, hay những cành củi nhặt nhạnh trong buổi chiều đi chăn trâu để chị em cùng nhau đốt “pháo hoa”… được tái hiện lại bởi một người cháu, người con đầy xúc động.', 5, 'namnghegiothoisauhe.jpg'),
(76, 'Ta Bắt Đầu Cuộc Đời Mới, Khi Nhận Ra Mình Chỉ Sống Một Lần', 'Raphaëlle Giordano', 108000, 'Camille, ba mươi tám tuổi một phần tư, có tất cả mọi thứ để sống hạnh phúc nhưng lại cảm thấy hạnh phúc đang trượt khỏi tay mình. Cô phải đối mặt với những vấn đề cuộc sống thường nhật mà bất cứ ai trong chúng ta cũng từng gặp phải: cuộc sống gia đình và công việc nhàm chán, tự ti về ngoại hình, mâu thuẫn với bố mẹ, chồng, con và đồng nghiệp.\r\nCuộc sống của Camille rẽ hướng từ khi cô tình cờ gặp Claude, một bác sĩ “trị liệu thói quen”, người đã giúp đỡ và đồng hành cùng cô trên con đường tìm đến hạnh phúc. Thông qua những trải nghiệm tuyệt vời, sáng tạo và đầy ý nghĩa, Camille sẽ từng bước thay đổi mọi khía cạnh cuộc sống và chinh phục lại ước mơ thuở ban đầu.', 3, 'tabatdaucuocdoikhinhanra.jpg'),
(77, 'Cha Mẹ Vô Điều Kiện', 'Alfie Kohn', 89800, 'Cha mẹ vô điều kiện là cuốn sách sẽ khiến cha mẹ có cái nhìn hoàn toàn khác về tình yêu thương dành cho con trẻ.\r\nThực tế, chúng ta có xu hướng yêu quý những đứa trẻ ngoan ngoãn, biết vâng lời hơn là những đứa trẻ nghịch ngợm. Cũng giống như việc chúng ta thường hay thỏa thuận với trẻ rằng nếu con không ngồi yên mẹ sẽ không cho con đi siêu thị nữa, nếu con không trật tự thì con sẽ không được ăn tối... Tất cả những điều đó đã vô tình khiến chúng ta đã đặt điều kiện cho thứ tình yêu vốn thiêng liêng và thuần khiết nhất.', 7, 'chamevodieukien.jpg'),
(78, 'Hẹn Nhau Phía Sau Tan Vỡ', 'An', 57620, 'Cuốn sách này…\r\nDành tặng những tâm hồn tan vỡ, đã yêu, đã chia ly, đã từ biệt…\r\nVà lời chúc cho một cuộc hạnh ngộ đủ đầy yêu thương.\r\n“Có nhiều lần tự hỏi, tại sao ngoài kia có biết bao chuyện tình đẹp, sao mình lần nào cũng dở dang?”\r\nSau chia tay, có phải bạn luôn loay hoay với rất nhiều hoài nghi, vô vàn thứ cảm xúc rối ren phức tạp, và tự hỏi như thế, tự căn dặn mình những lời lẽ: mạnh mẽ lên, sẽ ổn thôi, đừng hối hận…?\r\nCũng có thể, bạn trải nghiệm những mối tình thoáng chốc, để rồi sau cuối, trong những ngày ngập tràn cô đơn, đã luôn tự hỏi, làm thế nào để trở về khoảng thời gian hạnh phúc bên – người – xưa – cũ?', 3, 'hennhauphiasautanvo.jpg'),
(79, 'Cảm Ơn Anh Đã Đánh Mất Em', 'Trí', 70100, '“Hãy đọc để một ngày nào đó, nếu chúng ta gặp lại, ta vẫn muốn được chào nhau một câu, hỏi han nhau vài lời. Và cảm ơn vì năm ấy người đã xuất hiện, cùng nhau dệt nên một đoạn ký ức thật đẹp.”\r\nBạn đã bao giờ yêu một người hết lòng và ước mong sống vui vẻ với nhau trọn đời, nhưng rồi nhận ra tình yêu phức tạp quá, đôi khi khiến bản thân trở nên sợ hãi mất hết niềm tin? \r\nBạn đã yêu “điên rồ” như thế chưa? Người đã muốn đi thì làm sao mình giữ. Tình đã cạn rồi thì thử hỏi trách ai đây?', 3, 'camonanhdadanhmatem.jpg'),
(80, 'ĐỪNG NÓI VỀ CHÚNG TA VỚI NGƯỜI SAU', ' Trí', 72000, '“Đừng nói về chúng ta với người sau” là một món quà đặc biệt Trí dành tặng cho độc giả thân thương vào dịp Giáng sinh năm nay.\r\nVẫn là Trí với giọng văn nhẹ nhàng, sâu lắng nhưng đầy da diết chân thành, quyển sách như một người tri kỉ sẽ đồng hành cùng bạn vào những ngày đông buốt giá.\r\n“Đừng nói về chúng ta với người sau” không phải là một quyển sách chứa những triết lý cao xa, cũng không mang đến những thông điệp to lớn. Nó chỉ đơn giản là một quyển sổ nhỏ ghi lại một hành trình yêu, trong đó có vui, có buồn, có những khung trời kỷ niệm đáng nhớ mà Trí tin rằng ai trong chúng ta cũng đã, đang và sẽ trải qua.', 3, 'dungnoivechungtavoinguoisau.jpg'),
(81, 'Trưởng Thành Là Khi Nỗi Buồn Cũng Có Deadline', 'Writinman', 64100, 'Ngày trước cứ nghĩ rằng lớn lên sẽ thích lắm, muốn làm gì cũng được, không ai quản. Đúng là như vậy, nhưng cái giá phải trả chính là sự cô đơn.\r\nNgày trước lúc còn vô tư, thơ ngây luôn mộng tưởng cuộc sống trải đầy hoa hồng nhưng những điều hoa mỹ đó đều được sách vở “mài giũa” một cách khéo léo.\r\nNgày trước có thể tuỳ hứng, thích thì làm không thích thì bỏ đi. Nhưng bây giờ, mệt cũng phải gắng gượng hoàn thành cho hết công việc, thất tình cũng không thể bỏ cả thế giới lại sau lưng.', 5, 'truongthanhlakhinoibuon.jpg');
INSERT INTO `books` (`idBook`, `Bookname`, `Writer`, `Price`, `Detail`, `Type`, `img_src`) VALUES
(82, 'Tôi Đã Yêu Người Âm Thầm Như Thế ', 'Anna Turner', 111200, 'Khi yêu đơn phương có nên tỏ tình hay không?\r\nNên làm gì để đối phương đón nhận tình cảm của mình?\r\nTỏ tình thất bại có nên tiếp tục kiên trì cố gắng hay không?\r\nThật ngại quá, nếu bạn đang đi tìm đáp án cho những câu hỏi trên thì cuốn sách này không thể cho bạn câu trả lời chính xác  được.\r\nAnna rất tiếc phải nói rằng, không có một đáp án cụ thể nào cho tất cả mọi trường hợp. Bạn chỉ có thể tùy theo hoàn cảnh bạn đang đối mặt để linh hoạt đưa ra quyết định của riêng mình. Dù vậy, tôi tin rằng mỗi một câu chuyện tôi kể trong cuốn sách, kể cả chuyện của bạn bè tôi, hay là chuyện của chính tôi, đều sẽ gợi lên cho bạn điều gì đó, một chút cảm xúc, một chút thanh thản, một chút quyết tâm,… để tiếp thêm sức mạnh cho bạn trên suốt hành trình yêu và theo đuổi tình yêu của bản thân mình.', 3, 'toidayeunguoiamthamnhuthe.jpg'),
(83, 'Một Đời Một Kiếp, Giang Nam Lão', ' Mặc Bảo Phi Bảo', 127000, 'Năm ấy cô mới mười mấy tuổi, lần đầu đến Giang Nam, trông thấy cổ thụ tường xám trong mưa, dưới chân tường, cạnh gốc cây chẳng có một bóng người, bốn bề vắng lặng.\r\nCô đâu biết, nhạn lớn ở Giang Nam đằng đẵng bao năm đợi quay về Bắc, anh cũng đợi cô đằng đẵng bấy nhiêu ngày.\r\n“Người người đều nói Giang Nam đẹp, khách phương xa già ở Giang Nam mới hợp.”\r\nNếu người không về, ta sẽ chẳng già đi.', 3, 'motdoimotkiepgiangnamlao.jpg'),
(84, 'Không Kịp Nói Yêu Em', ' Phỉ Ngã Tư Tồn', 105000, 'Câu chuyện có bối cảnh là thời Dân quốc, đất nước Trung Hoa bị tranh chấp bởi nhiều chính quyền và thế lực khác nhau.\r\nDoãn Tĩnh Uyển là một nữ du học sinh từ Nga đi tàu về nhà, đến ga Vĩnh Tân, trong địa phận của Dĩnh quân, đoàn tàu đột nhiên bị lục soát, hình như là truy tìm một nhân vật quan trọng nào đó. Trong phòng Doãn Tĩnh Uyển đột nhiên xuất hiện một chàng trai, có lẽ anh chính là người bị truy tìm, để đánh lừa quan binh hai người diễn vở kịch vợ chồng. Khi rời đi, chàng trai tặng cô một chiếc đồng hồ vàng. Tĩnh Uyển nhận ra đó là một chiếc đồng hồ quý giá, trên có hai chữ “Bái Lâm”.', 3, 'khongkipnoiyeuem.jpg'),
(85, 'Hẹn Đẹp Như Mơ', 'Phỉ Ngã Tư Tồn', 106000, 'Câu chuyện bắt đầu bằng tình tiết Giai Kỳ gặp Chính Đông, rồi lần giở về quá khứ - về mối tình mà Giai Kỳ luôn giấu trong sâu thẳm trái tim – mối tình với Mạnh Hòa Bình. Có một thời, cô và Mạnh Hòa Bình cứ tưởng rằng chỉ cần yêu nhau, chỉ cần cố gắng thì sẽ có thể xóa đi mọi khoảng cách về giai cấp, gia đình… Nhưng hóa ra không phải vậy, hóa ra sự kiên quyết, cố gắng ấy đã khiến Giai Kỳ mất nhiều hơn là được: người cha hết lòng thương yêu đã không còn, người yêu cô – Mạnh Hòa Bình chịu khổ sở, bỏ lỡ tương lai vì cô… Để giữ sự tôn nghiêm cho bản thân mình, Giai Kỳ lựa chọn ra đi.', 3, 'hendepnhumo.jpg'),
(86, 'Định Mệnh Dưới Mưa', ' Khang Thành', 139000, 'Khoảnh khắc này cô mới hiểu, bản thân cô chọn một người như anh, bởi vì mỗi khi ở bên cạnh anh, cô luôn có thể làm chính mình.\r\nAnh rất giống một rừng cây, hiu quạnh, trống trải, không có gì cả. Khi không có ánh đèn phồn hoa, ánh mặt trời mới thật sự ấm áp. Khi không có tiếng người cười nói ồn ào, dòng nước mới thật sự trong veo, tĩnh mịch. Cuối cùng cô đã tìm được một người như vậy, một người để cô có thể làm những điều mà thẳm sâu trong lòng cô luôn ước ao, nhẹ nhõm, chân thành, thẳng thắn.', 6, 'dinhmenhduoimua.jpg'),
(87, 'Điều Thuộc Về Em', 'Garth Greenwell', 109000, '“Tinh tế… Về phong cách, Greenwell ảnh hưởng từ Sebald nhiều hơn Nabokov… Một trong những nét đẹp lớn trong văn Greenwell là văn anh cực kỳ sâu sắc, ngay cả khi chạm đến nhu cầu và đam mê xác thịt. Đây là cảm xúc được hồi tưởng trong yên tĩnh, hay đúng hơn là trong u sầu.” – Damon Galgut, The Nation.\r\nMột chiều thu ấm áp, chàng giáo viên người Mỹ bước vào nhà vệ sinh công cộng bên dưới Cung Văn hóa Quốc gia Bulgaria ở Sofia. Ở đó, anh gặp Mitko, một thanh niên trẻ lôi cuốn…', 6, 'dieuthuocveem.jpg'),
(88, 'Đêm Nay Có Rượu', 'Chúc Tiểu Cửu', 189000, 'Trong nửa cuộc đời đã qua của anh, rất ít người nhìn anh bằng ánh mắt tràn đầy kỳ vọng. Người ta luôn nói với anh rằng: “Tiêu Sách, cuộc đời này chẳng phải quá dài, hãy cứ được sao biết vậy, có thể vui vẻ nhất thời là tốt rồi, không cần phải cố gắng đến thế, không cần phải sống một cách mệt mỏi như vậy.” Chính anh đã không chịu, suy nghĩ của anh không giống với người khác, cho nên anh vẫn luôn phải bước đi trong sự cô độc.', 6, 'demnaycoruou.jpg'),
(89, 'Nếu Không Là Tình Yêu', ' Diệp Lạc Vô Tâm', 105000, 'Có câu nói,con người trong cả một đời dù sao cũng phải làm vài chuyện khiến bản thân hối hận, như thế cuộc đời mới hoàn chỉnh.\r\nCho đến tận bây giờ, tôi chỉ làm hai việc giúp cuộc đời mình hoàn chỉnh. Đó là việc đầu tiên là yêu anh và việc thứ hai là gả cho anh.\r\nAnh đã từng nói với tôi, nếu em thật sự yêu một người, dù anh ta không yêu em, em cũng phải tìm mọi cách giành được anh ta, bằng không cả đời này em sẽ không hạnh phúc. Tôi tin vào lời khuyên đó, vì vậy tôi đã sử dụng mọi cách có thể. Cuối cùng, tôi cũng có được anh nhưng rồi tôi lại rời xa anh.', 6, 'neukhonglatinhyeu.jpg'),
(90, 'Đừng Để Lỡ Nhau', 'Ân Tầm', 308000, 'Trong những câu chuyện cổ tích, nhân loại chẳng bao giờ biết được sau khi hoàng tử và công chúa sống hạnh phúc bên nhau thì hoàng tử liệu có thay lòng không? Công chúa có già đi không? Hay giả sử ông trời chỉ cho hoàng tử và công chúa một nửa duyên phận kiếp này, biết đâu công chúa sẽ rời đi trước, hoặc hoàng tử bỏ công chúa ra đi mãi mãi?', 6, 'dungdelonhau.jpg'),
(91, 'Tôi Tài Giỏi - Bạn Cũng Thế', ' Adam Khoo', 108000, 'Khi bạn cầm trên tay quyển sách này, có nghĩa là bạn đã có chiếc chìa khóa đến sự thành công cùng bảng hướng dẫn sử dụng.\r\nTrong chúng ta, bất kỳ ai cũng muốn chính bản thân mình trở thành người tài giỏi, có thể giải quyết mọi vấn đề một cách hiệu quả nhất. Và để có được những điều đó quyển sách này sẽ giúp bạn bằng những hướng dẫn học tập chi tiết nhất.\r\nTác giả không chỉ đơn thuần giải thích người khác đã thành công như thế nào, mà còn nói làm sao để họ làm được như thế để giúp người đọc khám phá ra tiềm năng của bản thân, và phát huy điều đó. Ngoài ra, sách còn cung cấp những phương pháp học thông minh (như áp dụng các công cụ học bằng cả não bộ như Sơ Đồ Tư Duy, phát triển trí nhớ siêu việt để ghi nhớ các sự kiện, con số một cách dễ dàng, thành thạo việc quản lý thời gian và xác định mục tiêu). ', 5, 'toitaigiobancungthe.jpg'),
(92, 'Shin - Cậu Bé Bút Chì ', ' Yoshito Usui', 25000, 'Với tài năng kể chuyện hấp dẫn, tác giả đã biến các trang sách của mình thành những sân chơi ngập tràn tiếng cười của những cô bé, cậu bé hồn nhiên và một thế giới tuổi thơ đa sắc màu. Những bài học giáo dục nhẹ nhàng, thấm thía cũng được lồng ghép một cách khéo léo trong từng tình huống truyện. Có thể Shin là một cậu bé cá tính, hiếu động. Có thể những trò tinh nghịch của Shin đôi khi quá trớn, chẳng chừa một ai. Nhưng sau những \"sự cố\" do Shin gây ra, người lớn thấy mình cần \"quan tâm\" đến trẻ con nhiều hơn nữa, các bạn đọc nhỏ tuổi chắc hẳn cũng được dịp nhìn nhận lại bản thân, để phân biệt điều tốt điều xấu trong cuộc sống.', 8, 'shin.jpg'),
(93, 'Bách Khoa Tri Thức ', ' Tin Man Arts', 60720, 'Trong bộ sách Bách khoa tri thức dành cho học sinh, các bạn sẽ gặp nhóc Q - cậu bé xác ướp đến từ Ai Cập cổ đại 3.000 năm trước cùng bốn bạn nhỏ đi du lịch khắp nơi trên thế giới để tìm hiểu các kiến thứ từ thời cổ đại đến thời hiện đại, các nền văn minh cổ, các loài cây độc đáo nhất, các loài động vật kỳ lạ nhất, các phát minh và cuộc sống của con người trong tương lai, các động thực vật thời cổ đại, khám phá những bí ẩn về Trái Đất và Hệ Mặt Trời', 1, 'bachkhoatrithuc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idBook` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idCart`, `idUser`, `idBook`, `Amount`) VALUES
(16, 1, 70, 5);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet`
--

CREATE TABLE `chitiet` (
  `id` int(11) NOT NULL,
  `ido` int(11) NOT NULL,
  `idbook` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitiet`
--

INSERT INTO `chitiet` (`id`, `ido`, `idbook`, `amount`) VALUES
(1, 1, 79, 5),
(2, 1, 86, 3),
(3, 1, 54, 5),
(4, 2, 79, 5),
(5, 2, 86, 3),
(6, 2, 54, 5),
(7, 3, 79, 5),
(8, 3, 86, 3),
(9, 3, 54, 5),
(10, 4, 79, 5),
(11, 4, 86, 3),
(12, 4, 54, 5),
(13, 5, 59, 8),
(14, 6, 53, 1),
(15, 6, 66, 8),
(16, 6, 5, 1),
(17, 7, 28, 2),
(18, 8, 28, 2),
(19, 8, 24, 1),
(20, 8, 58, 2),
(21, 8, 51, 1),
(22, 9, 33, 1),
(23, 10, 88, 1),
(24, 10, 81, 1),
(25, 12, 33, 1),
(26, 12, 34, 2),
(27, 12, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chung`
--
CREATE TABLE `chung` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chung`
--

ALTER TABLE chung 
MODIFY COLUMN date DATE NOT NULL DEFAULT CURDATE();
-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `idBook` int(11) NOT NULL,
  `img` varchar(70) NOT NULL,
  `img1` varchar(150) NOT NULL,
  `img2` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`idBook`, `img`, `img1`, `img2`) VALUES
(5, 'thanhphosauanhhaoquang2.jpg', 'thanhphosauanhhaoquang3.jpg', 'thanhphosauanhhaoquang2.jpg'),
(6, 'songnhulandautien.jpg', 'songnhulandautien 2.jpg', 'songnhulandautien3.jpg'),
(7, 'song-cho-tuoi-doi-muoi-duy-nhat-bia.jpg', 'song-cho-tuoi-doi-muoi-duy-nhat-bia.jpg', 'song-cho-tuoi-doi-muoi-duy-nhat-bia.jpg'),
(8, 'nhanguitatcacacemnguoitoiyeu.png', 'nhanguitatcacacemnguoitoiyeu.png', 'nhanguitatcacacemnguoitoiyeu.png'),
(9, 'giatocthanbi.png', 'giatocthanbi.png', 'giatocthanbi.png'),
(10, 'conan2.jpg', 'conan3.jpg', 'conan4.jpg'),
(11, 'haychamsocme3.jpg', 'haychamsocme4.jpg', 'haychamsocme2.jpg'),
(12, 'hayvevoicha2 .jpg', 'hayvevoicha3.png', 'hayvevoicha.jpg'),
(13, 'moidieucanbiet.png', 'moidieucanbiet2.png', 'moidieucanbiet4.png'),
(14, 'daikhodaudonmongmanh2.png', 'daikhodaudon4.png', 'daikhodaudon3.png'),
(15, 'emsedencungconmua2.png', 'emsedencungconmua3.png', 'emsedencungconmua4.png');

-- --------------------------------------------------------

--
-- Table structure for table `soldamount`
--

CREATE TABLE `soldamount` (
  `idBook` int(11) NOT NULL,
  `SoldAmount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soldamount`
--

INSERT INTO `soldamount` (`idBook`, `SoldAmount`) VALUES
(5, 37),
(6, 70),
(7, 45),
(8, 85),
(9, 77),
(10, 43),
(11, 28),
(12, 58),
(13, 78),
(14, 97),
(15, 30),
(16, 44),
(17, 14),
(18, 11),
(19, 38),
(20, 28),
(21, 59),
(22, 8),
(23, 5),
(24, 59),
(25, 47),
(26, 22),
(27, 68),
(28, 69),
(29, 53),
(30, 77),
(31, 69),
(32, 82),
(33, 88),
(34, 24),
(35, 48),
(36, 16),
(37, 93),
(38, 70),
(39, 42),
(40, 63),
(41, 55),
(42, 11),
(43, 76),
(44, 88),
(45, 8),
(46, 38),
(47, 90),
(48, 60),
(49, 7),
(50, 61),
(51, 87),
(52, 30),
(53, 72),
(54, 15),
(55, 27),
(56, 3),
(57, 79),
(58, 90),
(59, 77),
(60, 60),
(61, 35),
(62, 14),
(63, 60),
(64, 58),
(66, 21),
(67, 89),
(68, 7),
(69, 63),
(70, 98),
(71, 45),
(72, 37),
(73, 48),
(74, 31),
(75, 10),
(76, 86),
(77, 45),
(78, 34),
(79, 15),
(80, 62),
(81, 60),
(82, 71),
(83, 72),
(84, 45),
(85, 9),
(86, 9),
(87, 38),
(88, 64),
(89, 3),
(90, 28),
(91, 64),
(92, 70),
(93, 15);

-- --------------------------------------------------------

--
-- Table structure for table `type_book`
--

CREATE TABLE `type_book` (
  `ID` int(11) NOT NULL,
  `Type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_book`
--

INSERT INTO `type_book` (`ID`, `Type`) VALUES
(1, 'Khoa học '),
(4, 'Kinh dị'),
(5, 'Self help'),
(6, 'Tiểu thuyết'),
(3, 'Tình cảm'),
(7, 'Tình cảm gia đình'),
(2, 'Trinh thám'),
(8, 'Truyện tranh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDuser` int(11) NOT NULL,
  `userName` varchar(70) NOT NULL,
  `Pass` varchar(11) NOT NULL,
  `Mail` varchar(60) NOT NULL,
  `address` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDuser`, `userName`, `Pass`, `Mail`, `address`) VALUES
(1, 'Dummy', '0123456789', 'demo@gmail.com', 'Tran Dai Nghia'),
(2, 'MELP', '1234', 'Melp@gmail.com', 'Tran Dai Nghia'),
(4, 'tramlq.22ns@vku.udn.vn', '123', 'tramlq.22ns@vku.udn.vn', 'Tran Dai Nghia'),
(7, 'Linh', '1234', 'linh@gmail.com', 'Tran Dai Nghia'),
(8, 'loan', '1234', 'Loan@gmail.com', 'Tran Dai Nghia'),
(9, 'liem', '1234', 'Liem@gmail.com', 'Le Loi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idBook`),
  ADD UNIQUE KEY `bookName` (`Bookname`),
  ADD KEY `type` (`Type`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `user` (`idUser`),
  ADD KEY `book` (`idBook`);

--
-- Indexes for table `chitiet`
--
ALTER TABLE `chitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ido` (`ido`),
  ADD KEY `idbook` (`idbook`);

--
-- Indexes for table `chung`
--
ALTER TABLE `chung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`userid`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idBook`);

--
-- Indexes for table `soldamount`
--
ALTER TABLE `soldamount`
  ADD PRIMARY KEY (`idBook`),
  ADD UNIQUE KEY `idBook` (`idBook`),
  ADD UNIQUE KEY `idBook_2` (`idBook`),
  ADD KEY `idBook_3` (`idBook`);

--
-- Indexes for table `type_book`
--
ALTER TABLE `type_book`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Type of Book` (`Type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idBook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `chitiet`
--
ALTER TABLE `chitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chung`
--
ALTER TABLE `chung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_book`
--
ALTER TABLE `type_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `type_book` (`ID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idBook`) REFERENCES `books` (`idBook`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`IDuser`);

--
-- Constraints for table `chitiet`
--
ALTER TABLE `chitiet`
  ADD CONSTRAINT `chitiet_ibfk_1` FOREIGN KEY (`idbook`) REFERENCES `books` (`idBook`),
  ADD CONSTRAINT `chitiet_ibfk_2` FOREIGN KEY (`ido`) REFERENCES `chung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chung`
--
ALTER TABLE `chung`
  ADD CONSTRAINT `chung_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`IDuser`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idBook`) REFERENCES `books` (`idBook`);

--
-- Constraints for table `soldamount`
--
ALTER TABLE `soldamount`
  ADD CONSTRAINT `soldamount_ibfk_1` FOREIGN KEY (`idBook`) REFERENCES `books` (`idBook`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

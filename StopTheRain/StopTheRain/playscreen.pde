class PlayScreen {
  void display() {
    table();
    tissueBox();
    window();
  }

  void table() {
    noStroke();
    fill (93, 57, 84);
    rectMode(CORNERS);
    rect(0, 348, 600, 600);
  }

  void tissueBox() {
    strokeWeight(7);
    stroke(220, 208, 255);
    fill(147, 112, 219);
    rectMode(CORNERS);
    rect(105, 397, 494, 572);
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(175, 453, 414, 508);
  }

  void window() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(0, 291, 600, 350);
    rect(295, 0, 308, 291);
  }

  void LhandD() {
    strokeWeight(7);
    stroke(230, 232, 250);
    fill(75, 0, 130);
    beginShape();
    vertex(79, 600);
    vertex(96, 529);
    vertex(86, 504);
    vertex(88, 482);
    vertex(120, 465);
    vertex(150, 462);
    vertex(180, 476);
    vertex(178, 502);
    vertex(161, 525);
    vertex(171, 520);
    vertex(178, 531);
    vertex(162, 544);
    vertex(142, 552);
    vertex(128, 600);
    endShape(CLOSE);
  }

  void RhandD() {
    stroke(230, 232, 250);
    fill(75, 0, 130);
    beginShape();
    vertex(523, 600);
    vertex(506, 529);
    vertex(515, 504);
    vertex(513, 482);
    vertex(481, 465);
    vertex(449, 462);
    vertex(419, 476);
    vertex(421, 502);
    vertex(438, 525);
    vertex(428, 520);
    vertex(421, 531);
    vertex(437, 544);
    vertex(457, 552);
    vertex(471, 600);
    endShape(CLOSE);
  }

  void tissueB1() {
    strokeWeight(4);
    stroke(75, 0, 130);
    fill(230, 232, 250);
    beginShape();
    vertex(194, 482);
    vertex(207, 469);
    vertex(231, 471);
    vertex(260, 482);
    vertex(268, 488);
    vertex(292, 485);
    vertex(322, 468);
    vertex(342, 467);
    vertex(367, 475);
    vertex(387, 478);
    vertex(392, 485);
    vertex(395, 491);
    vertex(401, 487);
    vertex(398, 477);
    endShape(CLOSE);
  }

  void tissueB2() {
    strokeWeight(4);
    stroke(75, 0, 130);
    fill(230, 232, 250);
    beginShape();
    vertex(398, 482);
    vertex(401, 469);
    vertex(395, 471);
    vertex(392, 482);
    vertex(387, 488);
    vertex(367, 485);
    vertex(342, 468);
    vertex(322, 467);
    vertex(292, 475);
    vertex(268, 478);
    vertex(260, 485);
    vertex(231, 491);
    vertex(207, 487);
    vertex(194, 477);
    endShape(CLOSE);
  }

  void LhandL() {
    strokeWeight(7);
    stroke(75, 0, 130);
    fill(230, 232, 250);
    beginShape();
    vertex(79, 600);
    vertex(96, 529);
    vertex(86, 504);
    vertex(88, 482);
    vertex(120, 465);
    vertex(150, 462);
    vertex(180, 476);
    vertex(178, 502);
    vertex(161, 525);
    vertex(171, 520);
    vertex(178, 531);
    vertex(162, 544);
    vertex(142, 552);
    vertex(128, 600);
    endShape(CLOSE);
  }

  void RhandL() {
    stroke(75, 0, 130);
    fill(230, 232, 250);
    beginShape();
    vertex(523, 600);
    vertex(506, 529);
    vertex(515, 504);
    vertex(513, 482);
    vertex(481, 465);
    vertex(449, 462);
    vertex(419, 476);
    vertex(421, 502);
    vertex(438, 525);
    vertex(428, 520);
    vertex(421, 531);
    vertex(437, 544);
    vertex(457, 552);
    vertex(471, 600);
    endShape(CLOSE);
  }

  void drawTissues() {
    for (int i = 0; i <= tissueToShow; i++) {
      switch (i) {
      case 0:
        tissue1();
        break;
      case 1:
        tissue2();
        break;
      case 2:
        tissue3();
        break;
      case 3:
        tissue4();
        break;
      case 4:
        tissue5();
        break;
      case 5:
        tissue6();
        break;
      case 6:
        tissue7();
        break;
      case 7:
        tissue8();
        break;
      case 8:
        tissue9();
        break;
      case 9:
        tissue10();
        break;
      case 10:
        tissue11();
        break;
      case 11:
        tissue12();
        break;
      case 12:
        tissue13();
        break;
      case 13:
        tissue14();
        break;
      }
    }
  }

  void tissue1() {
    beginShape();
    vertex(-7, 265);
    vertex(-1, 259);
    vertex(8, 266);
    vertex(19, 265);
    vertex(8, 266);
    vertex(-1, 259);
    vertex(-1, 246);
    vertex(17, 244);
    vertex(25, 239);
    vertex(33, 247);
    vertex(32, 249);
    vertex(21, 251);
    vertex(17, 244);
    vertex(25, 239);
    vertex(33, 247);
    vertex(32, 249);
    vertex(43, 258);
    vertex(38, 267);
    vertex(29, 263);
    vertex(38, 267);
    vertex(40, 279);
    vertex(33, 288);
    vertex(21, 290);
    vertex(15, 284);
    vertex(12, 278);
    vertex(15, 284);
    vertex(6, 290);
    vertex(-2, 284);
    vertex(-2, 275);
    vertex(-6, 270);
    endShape(CLOSE);
  }

  void tissue2() {
    beginShape();
    vertex(36, 265);
    vertex(42, 259);
    vertex(51, 266);
    vertex(62, 265);
    vertex(51, 266);
    vertex(42, 259);
    vertex(42, 246);
    vertex(60, 244);
    vertex(68, 239);
    vertex(76, 247);
    vertex(75, 249);
    vertex(64, 251);
    vertex(60, 244);
    vertex(68, 239);
    vertex(76, 247);
    vertex(75, 249);
    vertex(86, 258);
    vertex(81, 267);
    vertex(72, 263);
    vertex(81, 267);
    vertex(83, 279);
    vertex(76, 288);
    vertex(64, 290);
    vertex(58, 284);
    vertex(55, 278);
    vertex(58, 284);
    vertex(49, 290);
    vertex(41, 284);
    vertex(41, 275);
    vertex(37, 270);
    endShape(CLOSE);
  }

  void tissue3() {
    beginShape();
    vertex(79, 265);
    vertex(85, 259);
    vertex(94, 266);
    vertex(105, 265);
    vertex(94, 266);
    vertex(85, 259);
    vertex(85, 246);
    vertex(103, 244);
    vertex(111, 239);
    vertex(119, 247);
    vertex(118, 249);
    vertex(107, 251);
    vertex(103, 244);
    vertex(111, 239);
    vertex(119, 247);
    vertex(118, 249);
    vertex(129, 258);
    vertex(124, 267);
    vertex(115, 263);
    vertex(124, 267);
    vertex(126, 279);
    vertex(119, 288);
    vertex(107, 290);
    vertex(101, 284);
    vertex(98, 278);
    vertex(101, 284);
    vertex(92, 290);
    vertex(84, 284);
    vertex(84, 275);
    vertex(80, 270);
    endShape(CLOSE);
  }

  void tissue4() {
    beginShape();
    vertex(122, 265);
    vertex(128, 259);
    vertex(137, 266);
    vertex(148, 265);
    vertex(137, 266);
    vertex(128, 259);
    vertex(128, 246);
    vertex(146, 244);
    vertex(154, 239);
    vertex(162, 247);
    vertex(161, 249);
    vertex(150, 251);
    vertex(146, 244);
    vertex(154, 239);
    vertex(162, 247);
    vertex(161, 249);
    vertex(172, 258);
    vertex(167, 267);
    vertex(158, 263);
    vertex(167, 267);
    vertex(169, 279);
    vertex(162, 288);
    vertex(150, 290);
    vertex(144, 284);
    vertex(141, 278);
    vertex(144, 284);
    vertex(135, 290);
    vertex(127, 284);
    vertex(127, 275);
    vertex(123, 270);
    endShape(CLOSE);
  }

  void tissue5() {
    beginShape();
    vertex(165, 265);
    vertex(171, 259);
    vertex(180, 266);
    vertex(191, 265);
    vertex(180, 266);
    vertex(171, 259);
    vertex(171, 246);
    vertex(186, 244);
    vertex(197, 239);
    vertex(205, 247);
    vertex(204, 249);
    vertex(193, 251);
    vertex(189, 244);
    vertex(197, 239);
    vertex(205, 247);
    vertex(204, 249);
    vertex(215, 258);
    vertex(210, 267);
    vertex(201, 263);
    vertex(210, 267);
    vertex(212, 279);
    vertex(205, 288);
    vertex(193, 290);
    vertex(187, 284);
    vertex(184, 278);
    vertex(187, 284);
    vertex(178, 290);
    vertex(170, 284);
    vertex(170, 275);
    vertex(166, 270);
    endShape(CLOSE);
  }

  void tissue6() {
    beginShape();
    vertex(208, 265);
    vertex(214, 259);
    vertex(223, 266);
    vertex(234, 265);
    vertex(223, 266);
    vertex(214, 259);
    vertex(214, 246);
    vertex(229, 244);
    vertex(240, 239);
    vertex(248, 247);
    vertex(247, 249);
    vertex(236, 251);
    vertex(232, 244);
    vertex(240, 239);
    vertex(248, 247);
    vertex(247, 249);
    vertex(258, 258);
    vertex(253, 267);
    vertex(244, 263);
    vertex(253, 267);
    vertex(255, 279);
    vertex(248, 288);
    vertex(236, 290);
    vertex(230, 284);
    vertex(227, 278);
    vertex(230, 284);
    vertex(221, 290);
    vertex(213, 284);
    vertex(213, 275);
    vertex(209, 270);
    endShape(CLOSE);
  }

  void tissue7() {
    beginShape();
    vertex(251, 265);
    vertex(257, 259);
    vertex(266, 266);
    vertex(277, 265);
    vertex(266, 266);
    vertex(257, 259);
    vertex(257, 246);
    vertex(272, 244);
    vertex(283, 239);
    vertex(291, 247);
    vertex(290, 249);
    vertex(279, 251);
    vertex(275, 244);
    vertex(283, 239);
    vertex(291, 247);
    vertex(290, 249);
    vertex(301, 258);
    vertex(296, 267);
    vertex(287, 263);
    vertex(296, 267);
    vertex(298, 279);
    vertex(291, 288);
    vertex(279, 290);
    vertex(273, 284);
    vertex(270, 278);
    vertex(273, 284);
    vertex(264, 290);
    vertex(256, 284);
    vertex(256, 275);
    vertex(252, 270);
    endShape(CLOSE);
  }

  void tissue8() {
    beginShape();
    vertex(294, 265);
    vertex(300, 259);
    vertex(309, 266);
    vertex(320, 265);
    vertex(309, 266);
    vertex(300, 259);
    vertex(300, 246);
    vertex(315, 244);
    vertex(326, 239);
    vertex(334, 247);
    vertex(333, 249);
    vertex(322, 251);
    vertex(318, 244);
    vertex(326, 239);
    vertex(334, 247);
    vertex(333, 249);
    vertex(344, 258);
    vertex(339, 267);
    vertex(330, 263);
    vertex(339, 267);
    vertex(341, 279);
    vertex(334, 288);
    vertex(322, 290);
    vertex(316, 284);
    vertex(313, 278);
    vertex(316, 284);
    vertex(307, 290);
    vertex(299, 284);
    vertex(299, 275);
    vertex(295, 270);
    endShape(CLOSE);
  }

  void tissue9() {
    beginShape();
    vertex(337, 265);
    vertex(343, 259);
    vertex(352, 266);
    vertex(363, 265);
    vertex(352, 266);
    vertex(343, 259);
    vertex(343, 246);
    vertex(358, 244);
    vertex(369, 239);
    vertex(377, 247);
    vertex(376, 249);
    vertex(365, 251);
    vertex(361, 244);
    vertex(369, 239);
    vertex(377, 247);
    vertex(376, 249);
    vertex(387, 258);
    vertex(382, 267);
    vertex(373, 263);
    vertex(382, 267);
    vertex(384, 279);
    vertex(377, 288);
    vertex(365, 290);
    vertex(359, 284);
    vertex(356, 278);
    vertex(359, 284);
    vertex(350, 290);
    vertex(342, 284);
    vertex(342, 275);
    vertex(338, 270);
    endShape(CLOSE);
  }

  void tissue10() {
    beginShape();
    vertex(380, 265);
    vertex(386, 259);
    vertex(395, 266);
    vertex(406, 265);
    vertex(395, 266);
    vertex(386, 259);
    vertex(386, 246);
    vertex(401, 244);
    vertex(412, 239);
    vertex(420, 247);
    vertex(419, 249);
    vertex(408, 251);
    vertex(404, 244);
    vertex(412, 239);
    vertex(420, 247);
    vertex(419, 249);
    vertex(430, 258);
    vertex(425, 267);
    vertex(416, 263);
    vertex(425, 267);
    vertex(427, 279);
    vertex(420, 288);
    vertex(408, 290);
    vertex(402, 284);
    vertex(399, 278);
    vertex(402, 284);
    vertex(393, 290);
    vertex(385, 284);
    vertex(385, 275);
    vertex(381, 270);
    endShape(CLOSE);
  }

  void tissue11() {
    beginShape();
    vertex(423, 265);
    vertex(429, 259);
    vertex(438, 266);
    vertex(449, 265);
    vertex(438, 266);
    vertex(429, 259);
    vertex(429, 246);
    vertex(444, 244);
    vertex(455, 239);
    vertex(463, 247);
    vertex(462, 249);
    vertex(451, 251);
    vertex(447, 244);
    vertex(455, 239);
    vertex(463, 247);
    vertex(462, 249);
    vertex(473, 258);
    vertex(468, 267);
    vertex(459, 263);
    vertex(468, 267);
    vertex(470, 279);
    vertex(463, 288);
    vertex(451, 290);
    vertex(445, 284);
    vertex(442, 278);
    vertex(445, 284);
    vertex(436, 290);
    vertex(428, 284);
    vertex(428, 275);
    vertex(424, 270);
    endShape(CLOSE);
  }

  void tissue12() {
    beginShape();
    vertex(466, 265);
    vertex(472, 259);
    vertex(481, 266);
    vertex(492, 265);
    vertex(481, 266);
    vertex(472, 259);
    vertex(472, 246);
    vertex(487, 244);
    vertex(498, 239);
    vertex(506, 247);
    vertex(505, 249);
    vertex(494, 251);
    vertex(490, 244);
    vertex(498, 239);
    vertex(506, 247);
    vertex(505, 249);
    vertex(516, 258);
    vertex(511, 267);
    vertex(502, 263);
    vertex(511, 267);
    vertex(513, 279);
    vertex(506, 288);
    vertex(494, 290);
    vertex(488, 284);
    vertex(485, 278);
    vertex(488, 284);
    vertex(479, 290);
    vertex(471, 284);
    vertex(471, 275);
    vertex(467, 270);
    endShape(CLOSE);
  }

  void tissue13() {
    beginShape();
    vertex(509, 265);
    vertex(515, 259);
    vertex(524, 266);
    vertex(535, 265);
    vertex(524, 266);
    vertex(515, 259);
    vertex(515, 246);
    vertex(530, 244);
    vertex(541, 239);
    vertex(549, 247);
    vertex(548, 249);
    vertex(537, 251);
    vertex(533, 244);
    vertex(541, 239);
    vertex(549, 247);
    vertex(548, 249);
    vertex(559, 258);
    vertex(554, 267);
    vertex(545, 263);
    vertex(554, 267);
    vertex(556, 279);
    vertex(549, 288);
    vertex(537, 290);
    vertex(531, 284);
    vertex(528, 278);
    vertex(531, 284);
    vertex(522, 290);
    vertex(514, 284);
    vertex(514, 275);
    vertex(510, 270);
    endShape(CLOSE);
  }

  void tissue14() {
    beginShape();
    vertex(552, 265);
    vertex(558, 259);
    vertex(567, 266);
    vertex(578, 265);
    vertex(567, 266);
    vertex(558, 259);
    vertex(558, 246);
    vertex(573, 244);
    vertex(584, 239);
    vertex(592, 247);
    vertex(591, 249);
    vertex(580, 251);
    vertex(576, 244);
    vertex(584, 239);
    vertex(592, 247);
    vertex(591, 249);
    vertex(602, 258);
    vertex(597, 267);
    vertex(588, 263);
    vertex(597, 267);
    vertex(599, 279);
    vertex(592, 288);
    vertex(580, 290);
    vertex(574, 284);
    vertex(571, 278);
    vertex(574, 284);
    vertex(565, 290);
    vertex(557, 284);
    vertex(557, 275);
    vertex(553, 270);
    endShape(CLOSE);
  }
}

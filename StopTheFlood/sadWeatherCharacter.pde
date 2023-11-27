class SadWeatherCharacter {
  void display() {
    stroke(75, 0, 130);
    fill(147, 112, 219);
    //side ribbon
    beginShape();
    vertex(291, 237);
    vertex(270, 254);
    vertex(245, 317);
    vertex(262, 323);
    endShape(CLOSE);

    beginShape();
    vertex(360, 226);
    vertex(377, 244);
    vertex(401, 299);
    vertex(388, 302);
    vertex(371, 296);
    vertex(346, 225);
    endShape(CLOSE);

    //string
    line(322, 0, 324, 139);

    fill(200, 202, 220);
    //body shadow
    beginShape();
    vertex(228, 470);
    vertex(234, 479);
    vertex(249, 477);
    vertex(257, 476);
    vertex(248, 497);
    vertex(248, 505);
    vertex(253, 508);
    vertex(288, 508);
    vertex(301, 512);
    vertex(299, 520);
    vertex(314, 523);
    vertex(340, 525);
    vertex(361, 520);
    vertex(376, 525);
    vertex(385, 527);
    vertex(402, 518);
    vertex(413, 515);
    vertex(433, 520);
    vertex(454, 517);
    vertex(471, 508);
    vertex(474, 494);
    vertex(372, 343);
    endShape(CLOSE);

    fill(230, 232, 250);
    //body
    beginShape();
    vertex(295, 237);
    vertex(284, 249);
    vertex(274, 273);
    vertex(262, 302);
    vertex(253, 331);
    vertex(242, 362);
    vertex(235, 403);
    vertex(231, 442);
    vertex(225, 474);
    vertex(287, 438);
    vertex(368, 422);
    vertex(377, 424);
    vertex(375, 428);
    vertex(361, 441);
    vertex(302, 479);
    vertex(299, 488);
    vertex(329, 486);
    vertex(345, 489);
    vertex(351, 500);
    vertex(357, 508);
    vertex(385, 508);
    vertex(406, 500);
    vertex(394, 430);
    vertex(417, 465);
    vertex(425, 474);
    vertex(437, 488);
    vertex(457, 489);
    vertex(465, 482);
    vertex(465, 462);
    vertex(455, 437);
    vertex(435, 405);
    vertex(411, 373);
    vertex(386, 330);
    vertex(356, 240);
    endShape(CLOSE);

    //neck piece
    fill(147, 112, 219);
    beginShape();
    vertex(291, 237);
    vertex(288, 250);
    vertex(308, 257);
    vertex(333, 258);
    vertex(362, 258);
    vertex(362, 230);
    endShape(CLOSE);


    fill(230, 232, 250);
    //head
    beginShape();
    vertex(318, 240);
    vertex(289, 235);
    vertex(260, 217);
    vertex(252, 194);
    vertex(249, 172);
    vertex(259, 155);
    vertex(275, 137);
    vertex(294, 131);
    vertex(321, 125);
    vertex(357, 127);
    vertex(375, 134);
    vertex(388, 147);
    vertex(394, 168);
    vertex(391, 201);
    vertex(379, 224);
    vertex(360, 239);
    vertex(337, 242);
    endShape(CLOSE);

    //face
    noFill();
    arc(290, 211, 10, 10, 0, PI);
    arc(340, 211, 10, 10, 0, PI);
    line(311, 228, 326, 224);
  }
}

class WinScreen {
  void display() {
    sun();
    restartButton();
    happyWeatherCharacter();
  }

  void sun() {
    strokeWeight(7);
    ellipseMode(CENTER);
    stroke(220, 208, 255, 100);
    fill(147, 112, 219, 100);
    ellipse(600, 0, 420, 420);
    stroke(220, 208, 255, 150);
    fill(147, 112, 219, 150);
    ellipse(600, 0, 320, 320);
    stroke(220, 208, 255, 200);
    fill(147, 112, 219, 200);
    ellipse(600, 0, 220, 220);
    stroke(220, 208, 255);
    fill(147, 112, 219);
    ellipse(600, 0, 120, 120);
  }

  //draw the restart button
  void restartButton() {
    stroke(220, 208, 255);
    fill(147, 112, 219);
    rectMode(CORNERS);
    rect(0, 497, 98, 600);
    stroke(231, 159, 196);
    fill(230, 230, 250);
    triangle(54, 595, 28, 575, 54, 555);
    arc(50, 550, 70, 70, 0, HALF_PI);
    arc(50, 550, 70, 70, PI, PI+QUARTER_PI);
    arc(50, 550, 70, 70, PI+QUARTER_PI, TWO_PI);
    line(30, 550, 20, 550);
    stroke(231, 159, 196);
    fill(147, 112, 219);
    arc(50, 550, 30, 30, 0, HALF_PI);
    arc(50, 550, 30, 30, PI, PI+QUARTER_PI);
    arc(50, 550, 30, 30, PI+QUARTER_PI, TWO_PI);
  }

  //draw the character hapy
  void happyWeatherCharacter() {
    stroke(75, 0, 130);
    fill(147, 112, 219);
    //string
    line(322, 0, 324, 139);

    //ribbons
    beginShape();
    vertex(280, 264);
    vertex(234, 278);
    vertex(180, 293);
    vertex(161, 297);
    vertex(149, 296);
    vertex(154, 302);
    vertex(162, 302);
    vertex(157, 308);
    vertex(149, 310);
    vertex(160, 312);
    vertex(201, 300);
    vertex(261, 291);
    endShape(CLOSE);

    beginShape();
    vertex(365, 236);
    vertex(370, 260);
    vertex(385, 292);
    vertex(401, 315);
    vertex(420, 331);
    vertex(428, 334);
    vertex(408, 330);
    vertex(413, 337);
    vertex(419, 340);
    vertex(405, 340);
    vertex(388, 331);
    vertex(358, 282);
    vertex(357, 237);
    endShape(CLOSE);

    beginShape();
    vertex(274, 228);
    vertex(266, 231);
    vertex(260, 238);
    vertex(255, 248);
    vertex(266, 250);
    vertex(290, 251);
    vertex(299, 238);
    endShape(CLOSE);

    beginShape();
    vertex(328, 222);
    vertex(394, 227);
    vertex(400, 234);
    vertex(401, 242);
    vertex(401, 251);
    vertex(385, 257);
    vertex(358, 260);
    vertex(344, 236);
    endShape(CLOSE);

    //shadow
    fill(200, 202, 220);
    beginShape();
    vertex(140, 434);
    vertex(155, 449);
    vertex(174, 450);
    vertex(237, 454);
    vertex(258, 459);
    vertex(259, 468);
    vertex(249, 495);
    vertex(247, 502);
    vertex(290, 505);
    vertex(300, 508);
    vertex(298, 517);
    vertex(320, 520);
    vertex(352, 517);
    vertex(366, 519);
    vertex(382, 521);
    vertex(392, 520);
    vertex(401, 502);
    vertex(395, 400);
    vertex(175, 391);
    endShape(CLOSE);

    //body
    fill(230, 232, 250);
    beginShape();
    vertex(221, 311);
    vertex(194, 320);
    vertex(134, 334);
    vertex(87, 344);
    vertex(64, 349);
    vertex(49, 345);
    vertex(44, 342);
    vertex(42, 352);
    vertex(49, 373);
    vertex(74, 389);
    vertex(97, 400);
    vertex(131, 402);
    endShape(CLOSE);

    beginShape();
    vertex(298, 237);
    vertex(255, 274);
    vertex(216, 314);
    vertex(174, 353);
    vertex(128, 396);
    vertex(105, 411);
    vertex(96, 413);
    vertex(112, 426);
    vertex(139, 437);
    vertex(175, 443);
    vertex(225, 442);
    vertex(280, 439);
    vertex(352, 427);
    vertex(371, 423);
    vertex(380, 425);
    vertex(372, 436);
    vertex(351, 451);
    vertex(308, 474);
    vertex(297, 483);
    vertex(307, 485);
    vertex(328, 483);
    vertex(340, 484);
    vertex(350, 489);
    vertex(352, 500);
    vertex(357, 505);
    vertex(371, 507);
    vertex(410, 473);
    vertex(408, 424);
    vertex(400, 365);
    vertex(377, 305);
    vertex(362, 254);
    vertex(357, 228);
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

    //head
    fill(230, 232, 250);
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
    arc(280, 161, 20, 10, PI, TWO_PI);
    arc(350, 161, 20, 10, PI, TWO_PI);
    arc(300, 171, 20, 15, 0, PI);
    arc(320, 171, 20, 15, 0, PI);
    stroke(231, 159, 196);
    fill(147, 112, 219);
    ellipseMode(CENTER);
    ellipse(255, 173, 30, 10);
    ellipse(375, 173, 30, 10);
  }
}

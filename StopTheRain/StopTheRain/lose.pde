// Class for the lose screen
class LoseScreen {

  // Method to display the lose screen
  void display() {
    sadWeatherCharacter();  // Call the method to draw the sad weather character
    restartButton();  // Call the method to draw the restart button
  }
  
  // Method to draw the restart button
  void restartButton() {
    strokeWeight(7);  // Set the stroke weight for the button
    stroke(220, 208, 255);  // Set the stroke color for the button
    fill(147, 112, 219);  // Set the fill color for the button
    rectMode(CORNERS);  // Set the rectangle mode to CORNERS
    rect(0, 497, 98, 600);  // Draw the main rectangle of the button
    stroke(231, 159, 196);  // Set another stroke color for details
    fill(230, 230, 250);  // Set another fill color for details
    triangle(54, 595, 28, 575, 54, 555);  // Draw a triangle on the button
    arc(50, 550, 70, 70, 0, HALF_PI);  // Draw the upper part of a circle on the button
    arc(50, 550, 70, 70, PI, PI + QUARTER_PI);  // Draw another part of the circle on the button
    arc(50, 550, 70, 70, PI + QUARTER_PI, TWO_PI);  // Draw the remaining part of the circle on the button
    line(30, 550, 20, 550);  // Draw a line on the button
    stroke(231, 159, 196);  // Set the stroke color for more details
    fill(147, 112, 219);  // Set the fill color for more details
    arc(50, 550, 30, 30, 0, HALF_PI);  // Draw a smaller circle on the button
    arc(50, 550, 30, 30, PI, PI + QUARTER_PI);  // Draw another part of the smaller circle
    arc(50, 550, 30, 30, PI + QUARTER_PI, TWO_PI);  // Draw the remaining part of the smaller circle
  }

  // Method to draw the sad weather character
  void sadWeatherCharacter() {
    stroke(75, 0, 130);  // Set the stroke color for the weather character
    fill(147, 112, 219);  // Set the fill color for the weather character
    
    // Draw side ribbons of the character
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

    // Draw a line representing the string of the weather character
    line(322, 0, 324, 139);

    fill(200, 202, 220);  // Set another fill color for shadows
    // Draw the shadow of the body
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

    fill(230, 232, 250);  // Set the fill color for the body
    // Draw the body of the weather character
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

    // Draw the neck piece of the weather character
    fill(147, 112, 219);  // Set the fill color for the neck piece
    beginShape();
    vertex(291, 237);
    vertex(288, 250);
    vertex(308, 257);
    vertex(333, 258);
    vertex(362, 258);
    vertex(362, 230);
    endShape(CLOSE);

    fill(230, 232, 250);  // Set the fill color for the head
    // Draw the head of the weather character
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

    // Draw the face of the weather character
    noFill();
    arc(290, 211, 10, 10, 0, PI);
    arc(340, 211, 10, 10, 0, PI);
    line(311, 228, 326, 224);
  }
}

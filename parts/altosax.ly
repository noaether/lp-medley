altoSax_COTNT = {
  g2 b2
  d2
  <<
    {
      \stemDown
      \override TextSpanner.bound-details.left.text = "div."
      fis2\startTextSpan
      a1 (a2) (g2)\stopTextSpan
    }
    \\
    {
      fis,2
      \stemUp e2 (g2) (fis1)
    }
  >>
}
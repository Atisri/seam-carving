## Author: Lenovo <Lenovo@DESKTOP-E7B8I67>
## Created: 2019-02-19

function energyImage=energyCalculation(image)
  #energyImage=entropyfilt(image);
[x y]=gradient(image);
energyImage=abs(x)+abs(y);

endfunction

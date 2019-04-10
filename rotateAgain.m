## Author: Lenovo <Lenovo@DESKTOP-E7B8I67>
## Created: 2019-03-02

function output = rotateAgain (finalImageHorizontal)
  
    output=rot90(finalImageHorizontal);
    output=rot90(output);
    output=rot90(output);
  

endfunction

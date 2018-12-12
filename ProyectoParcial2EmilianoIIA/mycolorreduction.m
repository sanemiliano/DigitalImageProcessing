function im = mycolorreduction(img)
  [f1 map] = rgb2ind(img,8);
  im = ind2rgb(f1, map);
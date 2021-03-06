function h_ = sp(nrows,ncols,i,inset)
  if ~exist('inset')
    inset = 0.05;
  end

  if ~isscalar(i)
    h = subplot(nrows,ncols,i);
  else
    row = nrows-1 - fix((i-1)/ncols);
    col = rem(i-1, ncols);
    pos = ([col row 1 1] + inset.*[1 1 -1 -5])./[ncols nrows ncols nrows];
    h = subplot('position', pos);
  end

  if nargout
    h_ = h;
  end
end

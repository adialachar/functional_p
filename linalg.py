def gausselim2(themat): # Basic row pivoting
       m = len(themat); n = len(themat[0])
          for j in range(min(n,m)):  # for each column on the main diag
                    if(themat[j][j]==0): # Find a non-zero pivot and swap rows
                                 thecolumn = [themat[k][j] for k in range(j,m)]
                                          ipivot = thecolumn.index(max(thecolumn))
                                                   temp = themat[j]; themat[j] = themat[ipivot]; themat[ipivot] = temp
                                                         for i in range(j+1,m):
                                                                      c = themat[i][j]/themat[j][j]   # Ratio of (i,j) elt by (j,j) (diagonal) elt
                                                                               themat[i] = [themat[i][k]-c*themat[j][k] for k in range(n)]
                                                                                  return themat

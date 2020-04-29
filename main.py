
#!/usr/bin/env python3
# Author: Sidheswar Ghosh

import cv2 as cv

def main():
    print(cv.__version__)
    image = cv.imread("leena.jpg" , 1)
        
    cv.imshow('image',image)
    cv.waitKey(0)    
    
    cv.destroyAllWindows()


if __name__ == "__main__":
    main()

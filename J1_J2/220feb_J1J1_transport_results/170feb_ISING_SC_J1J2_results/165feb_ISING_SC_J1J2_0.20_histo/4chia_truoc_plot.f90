!!! ================================================================================================
!!! ================================================================================================  
!!! Chuong trinh chia mot cot cho mot so truoc khi plot
!!! ================================================================================================
!!! ================================================================================================       
      PROGRAM test_open
      IMPLICIT NONE
     
      INTEGER (KIND=4) :: i,j,nE
      REAL    (KIND=8) :: E,P
      
      nE=2000000

      OPEN(unit=12,file='histogram.dat')
      OPEN(unit=13,file='histogram_new.dat')

      DO i=1,nE
            READ(12,*)j,E,P
            P=P/real(nE)
            WRITE(13,*)j,E,P
            
      END DO

      CLOSE(12)
      CLOSE(13)
      
      END PROGRAM


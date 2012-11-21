      MODULE sys_chdir_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.3E  20:52:41  11/14/01  
      SUBROUTINE sys_chdir (DIR, LENDIR, IERR) 
      CHARACTER (LEN = *) :: DIR 
      INTEGER, INTENT(IN) :: LENDIR 
      INTEGER, INTENT(OUT) :: IERR 
!VAST...Calls: CHDIR
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
      MODULE sys_getwd_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.3E  20:52:41  11/14/01  
      SUBROUTINE sys_getwd (DIR, LEN_CWD) 
      character (LEN = *), INTENT(IN) :: DIR 
      integer, INTENT(OUT) :: LEN_CWD 
!VAST...Calls: GETCWD, EXIT
!...This routine performs I/O.
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
      MODULE sys_mkdir_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.3E  20:52:41  11/14/01  
      SUBROUTINE sys_mkdir (DIR, LENDIR, IERR) 
      character (LEN = 80), INTENT(IN) :: DIR 
      integer, INTENT(OUT) :: LENDIR 
      integer, INTENT(OUT) :: IERR 
!VAST...Calls: SYSTEM
!...This routine performs I/O.
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
      MODULE work_dir_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.3E  20:52:41  11/14/01  
      SUBROUTINE work_dir (STARTDIR, PERMDIR, TMPDIR) 
      character (LEN = *), INTENT(IN) :: STARTDIR 
      character (LEN = *), INTENT(OUT) :: PERMDIR 
      character (LEN = *), INTENT(OUT) :: TMPDIR 
!VAST...Calls: SYS_GETWD, SYS_CHDIR, SYS_MKDIR
!...This routine performs I/O.
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
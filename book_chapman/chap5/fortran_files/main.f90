
PROGRAM fortran_files
    ! Section 5.5: An Introtuction to Files and File Processing.
    !
    ! File is a standard structure for holding data on a computer. It is
    ! consists of many lines of data that are related to each other, and
    ! that can be accessed as a unit. Files are used to store data that
    ! is too large to be stored in memory, or that needs to be stored
    ! permanently. Files are also used to store data that needs to be
    ! shared between different programs or different users.
    ! 
    ! Record is a single line of data in a file. A file is made up of
    ! many records. Each record is made up of one or more fields. 
    !
    ! A field is a single piece of data in a record. A field can be a 
    ! number, a string, or any other type of data. Fields are used to
    ! store the individual pieces of data that make up a record. Fields
    ! are also used to store the data that is used to identify a record.
    !
    ! Sequential access is a way of read and write data in consecutive
    ! one record after another in a file. In sequential access, the
    ! records in a file are read and written in the order in which they
    ! were added to the file. This means that the records in a file are
    ! read and written in the same order that they were added to the file.
    !
    ! Direct access ist a way of read and write data in a file by using
    ! the record number. In direct access, the records in a file are
    ! read and written by using the record number. This means that the
    ! records in a file can be read and written in any order, not just
    ! the order in which they were added to the file. Thi is, we jump
    ! freely from one record to another following no specific order. 
    !
    ! For historical reasons, sequential access is the default access 
    ! technique in Fortran, even if we are working capable of direct
    ! access.
    !
    ! The input/output (i/o) unit is a flexible method to read from 
    ! and write to files. This i/o unit corresponds to the first 
    ! asterisk (*) in the READ (*,*) and WRITE (*,*) statements.
    ! The i/o unit is a number that is used to identify a file. The
    !
    ! Fortran file contral statementes are:
    !   OPEN: Open a file for reading or writing.
    !   CLOSE: Close a file.
    !   READ: Read data from a file.
    !   WRITE: Write data to a file.
    !   REWIND: Move the file pointer to the beginning of the file.
    !   BACKSPACE: Move the file pointer back one record.
    !
    ! Cetain unit numbers are pre-defined to be connected to certain
    ! inpunt or output devices in Fortran (These vary from processor to
    ! processor):
    !   0: Standard error (this assignment goes back to the C language);
    !   5: Standard input (usually the keyboard);
    !   6: Standard output (usually the screen);
    ! 
    ! Remarks: 
    !   - you cannot count on any of these associations always being 
    !     true for every processor. If you need  to read form and write 
    !     to th standard devices, alway use  the asterisk (*) instead
    !     of the unit number. The asterisk is guaranteed to work on all.
    !   - Always use an OPEN statement to writing to a file.
    !
    ! OPEN statement:
    !   OPEN (unit, file, status, iostat, [access,] [form,] [recl,]
    !        [blank,] [position,] [action,] [delim,] [pad,] [err,]
    !        [fileopt,] [sharing,] [round,] [sign,] [convert,]
    !        [async,] [encoding,] [newunit,] [iomsg])
    !
    ! CLOSE statement:
    !   CLOSE (unit, [status,] [iostat,] [iomsg,] [err,] [keep,]
    !          [delete,])
    !
    ! READ statement:
    !   READ (unit, fmt, iostat, [err,] [end,] [rec,] [size,]
    !        [advance,] [eor,] [nml,] [iomsg,])
    !
    ! WRITE statement:
    !   WRITE (unit, fmt, iostat, [err,] [end,] [rec,] [size,]
    !         [advance,] [eor,] [nml,] [iomsg,])
    !
    ! REWIND statement:
    !   REWIND (unit, [iostat,] [iomsg,] [err,])
    !
    ! BACKSPACE statement:
    !   BACKSPACE (unit, [iostat,] [iomsg,] [err,])
    !
    ! Six most important items of the list of control items:
    !   - UNIT: The unit number of the file (nonnegative value);
    !   - FILE: The name of the file;
    !   - STATUS: The status of the file (OLD, NEW, REPLACE, SCRATCH, 
    !     UNKNOWN);
    !   - ACTION: The action to be taken on the file (READ, WRITE,
    !     READWRITE): If no action is specified, the file is opened for 
    !     reading and writing;
    !   - IOSTAT: The status of the I/O operation (0 if successful);
    !   - IOMSG: A character string that contains an error message if
    !     an error occurs.
    !
    ! Remark: The above clauses may apper in any order in the OPEN
    !         statement. The only required clause is the UNIT clause.
    !
    IMPLICIT NONE

    INTEGER :: unit, ierror
    CHARACTER(len=6) :: filename
    unit = 25
    filename = 'OUTPUT.DAT'
    OPEN (&
            UNIT=8, FILE='output.cvs', STATUS='OLD', ACTION='READ', &
            IOSTAT=ierror, IOMSG='err_string')

    ! The STATUS='OLD' clause tells the compiler that the file already
    ! exists; if the file does not exist, the OPEN statement retunred an 
    ! error code in variable ierror, and an erro message in character
    ! string err_string.
    ! The ACTION='READ' clause tells the compiler that the file is to be
    ! opened for reading only. If an attempt is made to write to the file,
    ! an error will occur. This behavior is the appropriate for an input 
    ! file.
    CLOSE (UNIT=8)
    !
    OPEN (UNIT=unit, FILE=filename, STATUS='NEW', ACTION='WRITE', &
          IOSTAT=ierror, IOMSG='err_string')
    CLOSE (UNIT=unit)
    ! or
    unit = 10
    OPEN (unit, filename, STATUS='REPLACE', ACTION='WRITE', &
          IOSTAT=ierror, IOMSG='err_string')
    !
    ! The STATUS='NEW' clause specifies that the file is a new file; 
    ! if the file does exist, the OPEN statement will return an error
    ! code in variable ierror. This form is used if we want to make sure
    ! that we don't overwrite the data in an existing file.
    ! The STATUS='REPLACE' clause specifies that a new file should be 
    ! opened for output whether a file by the same name exist or not.
    ! The old contents of the file will be lost. If it does not exist,
    ! the program will create a new file by that name and open it.
    ! The ACTION='WRITE' clause specifies that the file should be 
    ! write-only. If an attempt is made to read from the file, an error
    ! will occur. This behavior is appropriate for an output file.
    CLOSE (UNIT=unit)
    !
    OPEN (UNIT=12, STATUS='SCRATCH', IOSTAT=ierror)
    !
    ! The STATUS='SCRATCH' clause specifies that the file is a scratch
    ! file. A scratch file is a temporary file that is created by the
    ! program and is deleted when the program ends. 
    CLOSE (UNIT=12)
    ! 
END PROGRAM fortran_files


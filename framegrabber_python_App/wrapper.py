import ctypes 

lib = ctypes.cdll.LoadLibrary('./libfoo.so')

class V4l2(object):
    def __init__(self,val):
        lib.V4l2_new.argtypes = [ctypes.c_void_p]
        lib.V4l2_new.restype = ctypes.c_void_p

        lib.V4l2_CloseDevice.argtypes = [ctypes.c_void_p]
        lib.V4l2_CloseDevice.restype = ctypes.c_int 

        lib.V4l2_StopCapturing.argtypes = [ctypes.c_void_p]
        lib.V4l2_StopCapturing.restype = ctypes.c_void_p

        lib.V4l2_FreeBuffers.argtypes = [ctypes.c_void_p]
        lib.V4l2_FreeBuffers.restype = ctypes.c_int

        lib.V4l2_DequeAndQueueBuffers.argtypes = [ctypes.c_void_p] 
        lib.V4l2_DequeAndQueueBuffers.restype = ctypes.c_void_p
    
        #lib.V4l2_errno_exit.argtypes = [ctypes.c_char_p]
        #lib.V4l2_errno_exit.restype = ctypes.c_void_p
        #lib.V4l2_xioctl.argtypes = [ctypes.c_int, ctypes.c_int, ctypes.c_void_p]
        #lib.V4l2_xioctl.restype = ctypes.c_int

        lib.V4l2_open_device.argtypes = [ctypes.c_void_p] 
        lib.V4l2_open_device.restype = ctypes.c_int
        
        lib.V4l2_open_subdevice.argtypes = [ctypes.c_void_p] 
        lib.V4l2_open_subdevice.restype = ctypes.c_int

        lib.V4l2_Capabilities.argtypes = [ctypes.c_void_p] 
        lib.V4l2_Capabilities.restype = ctypes.c_int

        lib.V4l2_SetDeviceFormat.argtypes = [ctypes.c_int, ctypes.c_int, ctypes.c_int ]
        lib.V4l2_SetDeviceFormat.restype = ctypes.c_int

        lib.V4l2_SetSubDeviceFormat.argtypes = [ctypes.c_int, ctypes.c_int]
        lib.V4l2_SetSubDeviceFormat.restype = ctypes.c_int

        lib.V4l2_RequestBuffers.argtypes = [ctypes.c_int] 
        lib.V4l2_RequestBuffers.restype =  ctypes.c_int

        lib.V4l2_StreamOn.argtypes = [ctypes.c_void_p]
        lib.V4l2_StreamOn.restype =  ctypes.c_int

        lib.V4l2_selectBuf.argtypes = [ctypes.c_void_p] 
        lib.V4l2_selectBuf.restype = ctypes.c_void_p 

        lib.V4l2_singleQueueBuffers.argtypes = [ctypes.c_void_p] 
        lib.V4l2_singleQueueBuffers.restype = ctypes.c_void_p
        
        lib.V4l2_QueueBuffers.argtypes = [ctypes.c_void_p]
        lib.V4l2_QueueBuffers.restype = ctypes.c_int

        lib.V4l2_print_caps.argtypes = [ctypes.c_void_p]
        lib.V4l2_print_caps.restype = ctypes.c_int
       
        lib.V4l2_getBuffAddress.argtypes = [ctypes.c_void_p]
        lib.V4l2_getBuffAddress.restype = ctypes.c_uint

        lib.V4l2_delete.argtypes = [ctypes.c_void_p]

        self.obj = lib.V4l2_new(val)

    def open_device(self):
        return lib.V4l2_open_device(self.obj)
    
    def open_subdevice(self):
        return lib.V4l2_open_subdevice(self.obj)
        
    def Capabilities(self):
        return lib.V4l2_Capabilities(self.obj)

    def SetDeviceFormat(self,width,height,bytesperline):
        return (lib.V4l2_SetDeviceFormat(self.obj,width,height,bytesperline))
    
    def SetSubDeviceFormat(self,width,height):
        return lib.V4l2_SetSubDeviceFormat(self.obj,width,height)

    def RequestBuffers(self,howmanybuf):
        return lib.V4l2_RequestBuffers(self.obj,howmanybuf)
      
    def StreamOn(self):
        return lib.V4l2_StreamOn(self.obj)
 
    def singleQueueBuffers(self):
        return lib.V4l2_singleQueueBuffers(self.obj)

    def QueueBuffers(self):
        return lib.V4l2_QueueBuffers(self.obj)

    def DequeAndQueueBuffers(self):
        return lib.V4l2_DequeAndQueueBuffers(self.obj)

    def print_caps(self):
        return lib.V4l2_print_caps(self.obj)

    def selectBuf(self):
        return lib.V4l2_selectBuf(self.obj)

    #def xioctl(self,fd,request,arg):
    #   return lib.V4l2_xioctl(self.obj)

    def CloseDevice(self):
        return lib.V4l2_CloseDevice(self.obj)

    #def errno_exit(self):
    #    return lib.V4l2_errno_exit(self.obj)

    def StopCapturing(self):
        return lib.V4l2_StopCapturing(self.obj)

    def FreeBuffers(self):
        return lib.V4l2_FreeBuffers(self.obj)

    def getBuffAddress(self):
        return lib.V4l2_getBuffAddress(self.obj,vector_address.start)

    def __del__(self):
        return lib.V4l2_delete(self.obj)

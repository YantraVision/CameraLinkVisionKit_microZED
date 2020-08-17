import ctypes 

lib = ctypes.cdll.LoadLibrary('libs/libframeGrabber.so')

class V4l2(object):
    def __init__(self,val):
        lib.V4l2_new.argtypes = [ctypes.c_void_p]
        lib.V4l2_new.restype = ctypes.c_void_p

        lib.V4l2_CloseSubDevice.argtypes = [ctypes.c_void_p]
        lib.V4l2_CloseSubDevice.restype = ctypes.c_int 
        
        lib.V4l2_open_subdevice.argtypes = [ctypes.c_char_p] 
        lib.V4l2_open_subdevice.restype = ctypes.c_int

        lib.V4l2_SetSubDeviceFormat.argtypes = [ctypes.c_int, ctypes.c_int, ctypes.c_int]
        lib.V4l2_SetSubDeviceFormat.restype = ctypes.c_int

        lib.V4l2_delete.argtypes = [ctypes.c_void_p]

        self.obj = lib.V4l2_new(val)

    
    def open_subdevice(self,device_id):
        return lib.V4l2_open_subdevice(self.obj,device_id)
    
    def SetSubDeviceFormat(self,width,height,sub_vd):
        return lib.V4l2_SetSubDeviceFormat(self.obj,width,height,sub_vd)
    
    def CloseSubDevice(self):
        return lib.V4l2_CloseSubDevice(self.obj)
        return lib.V4l2_StopCapturing(self.obj)

    def __del__(self):
        return lib.V4l2_delete(self.obj)

cimport libav as lib
from av.filter.filter cimport Filter
from av.filter.graph cimport Graph


cdef class FilterLink(object):
    
    cdef lib.AVFilterLink *ptr


cdef class FilterContext(object):

    cdef lib.AVFilterContext *ptr
    cdef readonly Graph graph
    cdef readonly Filter filter

    cdef bint inited

    
cdef FilterContext make_filter_context()


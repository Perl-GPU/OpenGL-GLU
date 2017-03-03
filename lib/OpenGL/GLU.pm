package OpenGL::GLU;

use 5.008;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use OpenGL::GLU ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	GLU_AUTO_LOAD_MATRIX
	GLU_BEGIN
	GLU_CCW
	GLU_CULLING
	GLU_CW
	GLU_DISPLAY_MODE
	GLU_DOMAIN_DISTANCE
	GLU_EDGE_FLAG
	GLU_END
	GLU_ERROR
	GLU_EXTENSIONS
	GLU_EXTERIOR
	GLU_EXT_nurbs_tessellator
	GLU_EXT_object_space_tess
	GLU_FALSE
	GLU_FILL
	GLU_FLAT
	GLU_INCOMPATIBLE_GL_VERSION
	GLU_INSIDE
	GLU_INTERIOR
	GLU_INVALID_ENUM
	GLU_INVALID_OPERATION
	GLU_INVALID_VALUE
	GLU_LINE
	GLU_MAP1_TRIM_2
	GLU_MAP1_TRIM_3
	GLU_NONE
	GLU_NURBS_BEGIN
	GLU_NURBS_BEGIN_DATA
	GLU_NURBS_BEGIN_DATA_EXT
	GLU_NURBS_BEGIN_EXT
	GLU_NURBS_COLOR
	GLU_NURBS_COLOR_DATA
	GLU_NURBS_COLOR_DATA_EXT
	GLU_NURBS_COLOR_EXT
	GLU_NURBS_END
	GLU_NURBS_END_DATA
	GLU_NURBS_END_DATA_EXT
	GLU_NURBS_END_EXT
	GLU_NURBS_ERROR
	GLU_NURBS_ERROR1
	GLU_NURBS_ERROR10
	GLU_NURBS_ERROR11
	GLU_NURBS_ERROR12
	GLU_NURBS_ERROR13
	GLU_NURBS_ERROR14
	GLU_NURBS_ERROR15
	GLU_NURBS_ERROR16
	GLU_NURBS_ERROR17
	GLU_NURBS_ERROR18
	GLU_NURBS_ERROR19
	GLU_NURBS_ERROR2
	GLU_NURBS_ERROR20
	GLU_NURBS_ERROR21
	GLU_NURBS_ERROR22
	GLU_NURBS_ERROR23
	GLU_NURBS_ERROR24
	GLU_NURBS_ERROR25
	GLU_NURBS_ERROR26
	GLU_NURBS_ERROR27
	GLU_NURBS_ERROR28
	GLU_NURBS_ERROR29
	GLU_NURBS_ERROR3
	GLU_NURBS_ERROR30
	GLU_NURBS_ERROR31
	GLU_NURBS_ERROR32
	GLU_NURBS_ERROR33
	GLU_NURBS_ERROR34
	GLU_NURBS_ERROR35
	GLU_NURBS_ERROR36
	GLU_NURBS_ERROR37
	GLU_NURBS_ERROR4
	GLU_NURBS_ERROR5
	GLU_NURBS_ERROR6
	GLU_NURBS_ERROR7
	GLU_NURBS_ERROR8
	GLU_NURBS_ERROR9
	GLU_NURBS_MODE
	GLU_NURBS_MODE_EXT
	GLU_NURBS_NORMAL
	GLU_NURBS_NORMAL_DATA
	GLU_NURBS_NORMAL_DATA_EXT
	GLU_NURBS_NORMAL_EXT
	GLU_NURBS_RENDERER
	GLU_NURBS_RENDERER_EXT
	GLU_NURBS_TESSELLATOR
	GLU_NURBS_TESSELLATOR_EXT
	GLU_NURBS_TEXTURE_COORD
	GLU_NURBS_TEXTURE_COORD_DATA
	GLU_NURBS_TEX_COORD_DATA_EXT
	GLU_NURBS_TEX_COORD_EXT
	GLU_NURBS_VERTEX
	GLU_NURBS_VERTEX_DATA
	GLU_NURBS_VERTEX_DATA_EXT
	GLU_NURBS_VERTEX_EXT
	GLU_OBJECT_PARAMETRIC_ERROR
	GLU_OBJECT_PARAMETRIC_ERROR_EXT
	GLU_OBJECT_PATH_LENGTH
	GLU_OBJECT_PATH_LENGTH_EXT
	GLU_OUTLINE_PATCH
	GLU_OUTLINE_POLYGON
	GLU_OUTSIDE
	GLU_OUT_OF_MEMORY
	GLU_PARAMETRIC_ERROR
	GLU_PARAMETRIC_TOLERANCE
	GLU_PATH_LENGTH
	GLU_POINT
	GLU_SAMPLING_METHOD
	GLU_SAMPLING_TOLERANCE
	GLU_SILHOUETTE
	GLU_SMOOTH
	GLU_TESS_BEGIN
	GLU_TESS_BEGIN_DATA
	GLU_TESS_BOUNDARY_ONLY
	GLU_TESS_COMBINE
	GLU_TESS_COMBINE_DATA
	GLU_TESS_COORD_TOO_LARGE
	GLU_TESS_EDGE_FLAG
	GLU_TESS_EDGE_FLAG_DATA
	GLU_TESS_END
	GLU_TESS_END_DATA
	GLU_TESS_ERROR
	GLU_TESS_ERROR1
	GLU_TESS_ERROR2
	GLU_TESS_ERROR3
	GLU_TESS_ERROR4
	GLU_TESS_ERROR5
	GLU_TESS_ERROR6
	GLU_TESS_ERROR7
	GLU_TESS_ERROR8
	GLU_TESS_ERROR_DATA
	GLU_TESS_MAX_COORD
	GLU_TESS_MISSING_BEGIN_CONTOUR
	GLU_TESS_MISSING_BEGIN_POLYGON
	GLU_TESS_MISSING_END_CONTOUR
	GLU_TESS_MISSING_END_POLYGON
	GLU_TESS_NEED_COMBINE_CALLBACK
	GLU_TESS_TOLERANCE
	GLU_TESS_VERTEX
	GLU_TESS_VERTEX_DATA
	GLU_TESS_WINDING_ABS_GEQ_TWO
	GLU_TESS_WINDING_NEGATIVE
	GLU_TESS_WINDING_NONZERO
	GLU_TESS_WINDING_ODD
	GLU_TESS_WINDING_POSITIVE
	GLU_TESS_WINDING_RULE
	GLU_TRUE
	GLU_UNKNOWN
	GLU_U_STEP
	GLU_VERSION
	GLU_VERSION_1_1
	GLU_VERSION_1_2
	GLU_VERSION_1_3
	GLU_VERTEX
	GLU_V_STEP
	gluBeginCurve
	gluBeginPolygon
	gluBeginSurface
	gluBeginTrim
	gluBuild1DMipmapLevels
	gluBuild1DMipmaps
	gluBuild2DMipmapLevels
	gluBuild2DMipmaps
	gluBuild3DMipmapLevels
	gluBuild3DMipmaps
	gluCheckExtension
	gluCylinder
	gluDeleteNurbsRenderer
	gluDeleteQuadric
	gluDeleteTess
	gluDisk
	gluEndCurve
	gluEndPolygon
	gluEndSurface
	gluEndTrim
	gluErrorString
	gluGetNurbsProperty
	gluGetString
	gluGetTessProperty
	gluLoadSamplingMatrices
	gluLookAt
	gluNewNurbsRenderer
	gluNewQuadric
	gluNewTess
	gluNextContour
	gluNurbsCallback
	gluNurbsCallbackData
	gluNurbsCallbackDataEXT
	gluNurbsCurve
	gluNurbsProperty
	gluNurbsSurface
	gluOrtho2D
	gluPartialDisk
	gluPerspective
	gluPickMatrix
	gluProject
	gluPwlCurve
	gluQuadricCallback
	gluQuadricDrawStyle
	gluQuadricNormals
	gluQuadricOrientation
	gluQuadricTexture
	gluScaleImage
	gluSphere
	gluTessBeginContour
	gluTessBeginPolygon
	gluTessCallback
	gluTessEndContour
	gluTessEndPolygon
	gluTessNormal
	gluTessProperty
	gluTessVertex_p
	gluUnProject
	gluUnProject4
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	GLU_AUTO_LOAD_MATRIX
	GLU_BEGIN
	GLU_CCW
	GLU_CULLING
	GLU_CW
	GLU_DISPLAY_MODE
	GLU_DOMAIN_DISTANCE
	GLU_EDGE_FLAG
	GLU_END
	GLU_ERROR
	GLU_EXTENSIONS
	GLU_EXTERIOR
	GLU_EXT_nurbs_tessellator
	GLU_EXT_object_space_tess
	GLU_FALSE
	GLU_FILL
	GLU_FLAT
	GLU_INCOMPATIBLE_GL_VERSION
	GLU_INSIDE
	GLU_INTERIOR
	GLU_INVALID_ENUM
	GLU_INVALID_OPERATION
	GLU_INVALID_VALUE
	GLU_LINE
	GLU_MAP1_TRIM_2
	GLU_MAP1_TRIM_3
	GLU_NONE
	GLU_NURBS_BEGIN
	GLU_NURBS_BEGIN_DATA
	GLU_NURBS_BEGIN_DATA_EXT
	GLU_NURBS_BEGIN_EXT
	GLU_NURBS_COLOR
	GLU_NURBS_COLOR_DATA
	GLU_NURBS_COLOR_DATA_EXT
	GLU_NURBS_COLOR_EXT
	GLU_NURBS_END
	GLU_NURBS_END_DATA
	GLU_NURBS_END_DATA_EXT
	GLU_NURBS_END_EXT
	GLU_NURBS_ERROR
	GLU_NURBS_ERROR1
	GLU_NURBS_ERROR10
	GLU_NURBS_ERROR11
	GLU_NURBS_ERROR12
	GLU_NURBS_ERROR13
	GLU_NURBS_ERROR14
	GLU_NURBS_ERROR15
	GLU_NURBS_ERROR16
	GLU_NURBS_ERROR17
	GLU_NURBS_ERROR18
	GLU_NURBS_ERROR19
	GLU_NURBS_ERROR2
	GLU_NURBS_ERROR20
	GLU_NURBS_ERROR21
	GLU_NURBS_ERROR22
	GLU_NURBS_ERROR23
	GLU_NURBS_ERROR24
	GLU_NURBS_ERROR25
	GLU_NURBS_ERROR26
	GLU_NURBS_ERROR27
	GLU_NURBS_ERROR28
	GLU_NURBS_ERROR29
	GLU_NURBS_ERROR3
	GLU_NURBS_ERROR30
	GLU_NURBS_ERROR31
	GLU_NURBS_ERROR32
	GLU_NURBS_ERROR33
	GLU_NURBS_ERROR34
	GLU_NURBS_ERROR35
	GLU_NURBS_ERROR36
	GLU_NURBS_ERROR37
	GLU_NURBS_ERROR4
	GLU_NURBS_ERROR5
	GLU_NURBS_ERROR6
	GLU_NURBS_ERROR7
	GLU_NURBS_ERROR8
	GLU_NURBS_ERROR9
	GLU_NURBS_MODE
	GLU_NURBS_MODE_EXT
	GLU_NURBS_NORMAL
	GLU_NURBS_NORMAL_DATA
	GLU_NURBS_NORMAL_DATA_EXT
	GLU_NURBS_NORMAL_EXT
	GLU_NURBS_RENDERER
	GLU_NURBS_RENDERER_EXT
	GLU_NURBS_TESSELLATOR
	GLU_NURBS_TESSELLATOR_EXT
	GLU_NURBS_TEXTURE_COORD
	GLU_NURBS_TEXTURE_COORD_DATA
	GLU_NURBS_TEX_COORD_DATA_EXT
	GLU_NURBS_TEX_COORD_EXT
	GLU_NURBS_VERTEX
	GLU_NURBS_VERTEX_DATA
	GLU_NURBS_VERTEX_DATA_EXT
	GLU_NURBS_VERTEX_EXT
	GLU_OBJECT_PARAMETRIC_ERROR
	GLU_OBJECT_PARAMETRIC_ERROR_EXT
	GLU_OBJECT_PATH_LENGTH
	GLU_OBJECT_PATH_LENGTH_EXT
	GLU_OUTLINE_PATCH
	GLU_OUTLINE_POLYGON
	GLU_OUTSIDE
	GLU_OUT_OF_MEMORY
	GLU_PARAMETRIC_ERROR
	GLU_PARAMETRIC_TOLERANCE
	GLU_PATH_LENGTH
	GLU_POINT
	GLU_SAMPLING_METHOD
	GLU_SAMPLING_TOLERANCE
	GLU_SILHOUETTE
	GLU_SMOOTH
	GLU_TESS_BEGIN
	GLU_TESS_BEGIN_DATA
	GLU_TESS_BOUNDARY_ONLY
	GLU_TESS_COMBINE
	GLU_TESS_COMBINE_DATA
	GLU_TESS_COORD_TOO_LARGE
	GLU_TESS_EDGE_FLAG
	GLU_TESS_EDGE_FLAG_DATA
	GLU_TESS_END
	GLU_TESS_END_DATA
	GLU_TESS_ERROR
	GLU_TESS_ERROR1
	GLU_TESS_ERROR2
	GLU_TESS_ERROR3
	GLU_TESS_ERROR4
	GLU_TESS_ERROR5
	GLU_TESS_ERROR6
	GLU_TESS_ERROR7
	GLU_TESS_ERROR8
	GLU_TESS_ERROR_DATA
	GLU_TESS_MAX_COORD
	GLU_TESS_MISSING_BEGIN_CONTOUR
	GLU_TESS_MISSING_BEGIN_POLYGON
	GLU_TESS_MISSING_END_CONTOUR
	GLU_TESS_MISSING_END_POLYGON
	GLU_TESS_NEED_COMBINE_CALLBACK
	GLU_TESS_TOLERANCE
	GLU_TESS_VERTEX
	GLU_TESS_VERTEX_DATA
	GLU_TESS_WINDING_ABS_GEQ_TWO
	GLU_TESS_WINDING_NEGATIVE
	GLU_TESS_WINDING_NONZERO
	GLU_TESS_WINDING_ODD
	GLU_TESS_WINDING_POSITIVE
	GLU_TESS_WINDING_RULE
	GLU_TRUE
	GLU_UNKNOWN
	GLU_U_STEP
	GLU_VERSION
	GLU_VERSION_1_1
	GLU_VERSION_1_2
	GLU_VERSION_1_3
	GLU_VERTEX
	GLU_V_STEP
);

our $VERSION = '0.02_02';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&OpenGL::GLU::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

use XSLoader;
XSLoader::load('OpenGL::GLU', $VERSION);

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

OpenGL::GLU - Perl bindings to the OpenGL Utility Library (GLU)

=head1 SYNOPSIS

  use OpenGL::GLU qw(:all);

=head1 DESCRIPTION

This is a stand alone implementation of OpenGL::GLU bindings based
on the implementation of OpenGL.

=head2 EXPORT

None by default.

=head2 Exportable constants

  GLU_AUTO_LOAD_MATRIX
  GLU_BEGIN
  GLU_CCW
  GLU_CULLING
  GLU_CW
  GLU_DISPLAY_MODE
  GLU_DOMAIN_DISTANCE
  GLU_EDGE_FLAG
  GLU_END
  GLU_ERROR
  GLU_EXTENSIONS
  GLU_EXTERIOR
  GLU_EXT_nurbs_tessellator
  GLU_EXT_object_space_tess
  GLU_FALSE
  GLU_FILL
  GLU_FLAT
  GLU_INCOMPATIBLE_GL_VERSION
  GLU_INSIDE
  GLU_INTERIOR
  GLU_INVALID_ENUM
  GLU_INVALID_OPERATION
  GLU_INVALID_VALUE
  GLU_LINE
  GLU_MAP1_TRIM_2
  GLU_MAP1_TRIM_3
  GLU_NONE
  GLU_NURBS_BEGIN
  GLU_NURBS_BEGIN_DATA
  GLU_NURBS_BEGIN_DATA_EXT
  GLU_NURBS_BEGIN_EXT
  GLU_NURBS_COLOR
  GLU_NURBS_COLOR_DATA
  GLU_NURBS_COLOR_DATA_EXT
  GLU_NURBS_COLOR_EXT
  GLU_NURBS_END
  GLU_NURBS_END_DATA
  GLU_NURBS_END_DATA_EXT
  GLU_NURBS_END_EXT
  GLU_NURBS_ERROR
  GLU_NURBS_ERROR1
  GLU_NURBS_ERROR10
  GLU_NURBS_ERROR11
  GLU_NURBS_ERROR12
  GLU_NURBS_ERROR13
  GLU_NURBS_ERROR14
  GLU_NURBS_ERROR15
  GLU_NURBS_ERROR16
  GLU_NURBS_ERROR17
  GLU_NURBS_ERROR18
  GLU_NURBS_ERROR19
  GLU_NURBS_ERROR2
  GLU_NURBS_ERROR20
  GLU_NURBS_ERROR21
  GLU_NURBS_ERROR22
  GLU_NURBS_ERROR23
  GLU_NURBS_ERROR24
  GLU_NURBS_ERROR25
  GLU_NURBS_ERROR26
  GLU_NURBS_ERROR27
  GLU_NURBS_ERROR28
  GLU_NURBS_ERROR29
  GLU_NURBS_ERROR3
  GLU_NURBS_ERROR30
  GLU_NURBS_ERROR31
  GLU_NURBS_ERROR32
  GLU_NURBS_ERROR33
  GLU_NURBS_ERROR34
  GLU_NURBS_ERROR35
  GLU_NURBS_ERROR36
  GLU_NURBS_ERROR37
  GLU_NURBS_ERROR4
  GLU_NURBS_ERROR5
  GLU_NURBS_ERROR6
  GLU_NURBS_ERROR7
  GLU_NURBS_ERROR8
  GLU_NURBS_ERROR9
  GLU_NURBS_MODE
  GLU_NURBS_MODE_EXT
  GLU_NURBS_NORMAL
  GLU_NURBS_NORMAL_DATA
  GLU_NURBS_NORMAL_DATA_EXT
  GLU_NURBS_NORMAL_EXT
  GLU_NURBS_RENDERER
  GLU_NURBS_RENDERER_EXT
  GLU_NURBS_TESSELLATOR
  GLU_NURBS_TESSELLATOR_EXT
  GLU_NURBS_TEXTURE_COORD
  GLU_NURBS_TEXTURE_COORD_DATA
  GLU_NURBS_TEX_COORD_DATA_EXT
  GLU_NURBS_TEX_COORD_EXT
  GLU_NURBS_VERTEX
  GLU_NURBS_VERTEX_DATA
  GLU_NURBS_VERTEX_DATA_EXT
  GLU_NURBS_VERTEX_EXT
  GLU_OBJECT_PARAMETRIC_ERROR
  GLU_OBJECT_PARAMETRIC_ERROR_EXT
  GLU_OBJECT_PATH_LENGTH
  GLU_OBJECT_PATH_LENGTH_EXT
  GLU_OUTLINE_PATCH
  GLU_OUTLINE_POLYGON
  GLU_OUTSIDE
  GLU_OUT_OF_MEMORY
  GLU_PARAMETRIC_ERROR
  GLU_PARAMETRIC_TOLERANCE
  GLU_PATH_LENGTH
  GLU_POINT
  GLU_SAMPLING_METHOD
  GLU_SAMPLING_TOLERANCE
  GLU_SILHOUETTE
  GLU_SMOOTH
  GLU_TESS_BEGIN
  GLU_TESS_BEGIN_DATA
  GLU_TESS_BOUNDARY_ONLY
  GLU_TESS_COMBINE
  GLU_TESS_COMBINE_DATA
  GLU_TESS_COORD_TOO_LARGE
  GLU_TESS_EDGE_FLAG
  GLU_TESS_EDGE_FLAG_DATA
  GLU_TESS_END
  GLU_TESS_END_DATA
  GLU_TESS_ERROR
  GLU_TESS_ERROR1
  GLU_TESS_ERROR2
  GLU_TESS_ERROR3
  GLU_TESS_ERROR4
  GLU_TESS_ERROR5
  GLU_TESS_ERROR6
  GLU_TESS_ERROR7
  GLU_TESS_ERROR8
  GLU_TESS_ERROR_DATA
  GLU_TESS_MAX_COORD
  GLU_TESS_MISSING_BEGIN_CONTOUR
  GLU_TESS_MISSING_BEGIN_POLYGON
  GLU_TESS_MISSING_END_CONTOUR
  GLU_TESS_MISSING_END_POLYGON
  GLU_TESS_NEED_COMBINE_CALLBACK
  GLU_TESS_TOLERANCE
  GLU_TESS_VERTEX
  GLU_TESS_VERTEX_DATA
  GLU_TESS_WINDING_ABS_GEQ_TWO
  GLU_TESS_WINDING_NEGATIVE
  GLU_TESS_WINDING_NONZERO
  GLU_TESS_WINDING_ODD
  GLU_TESS_WINDING_POSITIVE
  GLU_TESS_WINDING_RULE
  GLU_TRUE
  GLU_UNKNOWN
  GLU_U_STEP
  GLU_VERSION
  GLU_VERSION_1_1
  GLU_VERSION_1_2
  GLU_VERSION_1_3
  GLU_VERTEX
  GLU_V_STEP

=head2 Exportable functions

  void gluBeginCurve (GLUnurbs* nurb)
  void gluBeginPolygon (GLUtesselator* tess)
  void gluBeginSurface (GLUnurbs* nurb)
  void gluBeginTrim (GLUnurbs* nurb)
  GLint gluBuild1DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data)
  GLint gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const void *data)
  GLint gluBuild2DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data)
  GLint gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *data)
  GLint gluBuild3DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data)
  GLint gluBuild3DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data)
  GLboolean gluCheckExtension (const GLubyte *extName, const GLubyte *extString)
  void gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)
  void gluDeleteNurbsRenderer (GLUnurbs* nurb)
  void gluDeleteQuadric (GLUquadric* quad)
  void gluDeleteTess (GLUtesselator* tess)
  void gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)
  void gluEndCurve (GLUnurbs* nurb)
  void gluEndPolygon (GLUtesselator* tess)
  void gluEndSurface (GLUnurbs* nurb)
  void gluEndTrim (GLUnurbs* nurb)
  const GLubyte * gluErrorString (GLenum error)
  void gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data)
  const GLubyte * gluGetString (GLenum name)
  void gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data)
  void gluLoadSamplingMatrices (GLUnurbs* nurb, const GLfloat *model, const GLfloat *perspective, const GLint *view)
  void gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)
  GLUnurbs* gluNewNurbsRenderer (void)
  GLUquadric* gluNewQuadric (void)
  GLUtesselator* gluNewTess (void)
  void gluNextContour (GLUtesselator* tess, GLenum type)
  void gluNurbsCallback (GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc)
  void gluNurbsCallbackData (GLUnurbs* nurb, GLvoid* userData)
  void gluNurbsCallbackDataEXT (GLUnurbs* nurb, GLvoid* userData)
  void gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type)
  void gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value)
  void gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)
  void gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)
  void gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)
  void gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)
  void gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport)
  GLint gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)
  void gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type)
  void gluQuadricCallback (GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc)
  void gluQuadricDrawStyle (GLUquadric* quad, GLenum draw)
  void gluQuadricNormals (GLUquadric* quad, GLenum normal)
  void gluQuadricOrientation (GLUquadric* quad, GLenum orientation)
  void gluQuadricTexture (GLUquadric* quad, GLboolean texture)
  GLint gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)
  void gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)
  void gluTessBeginContour (GLUtesselator* tess)
  void gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data)
  void gluTessCallback (GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc)
  void gluTessEndContour (GLUtesselator* tess)
  void gluTessEndPolygon (GLUtesselator* tess)
  void gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)
  void gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data)
  void gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data)
  GLint gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)
  GLint gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble nearVal, GLdouble farVal, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW)



=head1 SEE ALSO

See L<OpenGL> for the original module of which this is a piece.

The Perl OpenGL mailing lists are hosted as members only lists
at L<https://sourceforge.net/p/pogl/mailman/?source=navbar> where
you can read archives or subscribe.

See also L<OpenGL::Modern> which should work with this module
as well as the original L<OpenGL>.  Please confirm if you use
this!

=head1 AUTHOR

 Chris Marshall <chm @ cpan dot org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2017 by Chris Marshall

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14 or,
at your option, any later version of Perl 5 you may have available.


=cut

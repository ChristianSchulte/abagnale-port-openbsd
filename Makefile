COMMENT	=	algorithmic trading system

V	=	0.9691
REVISION	=	2
PKGNAME	=	abagnale-${V}
CATEGORIES	= localhost
DIST_TUPLE	+=	github jDTAUS Abagnale v0/9691 .
WRKDIST	=	${WRKDIR}/Abagnale-0-9691
HOMEPAGE	=	https://github.com/jDTAUS/Abagnale
MAINTAINER	=	Christian Schulte <cs@schulte.it>
PERMIT_PACKAGE =	Yes

# "make port-lib-depends-check" can help
WANTLIB	=	c m stdthreads ecpg pgtypes

LIB_DEPENDS	=	databases/postgresql devel/libstdthreads

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

BUILD_DATE	!=	date -u +%Y-%m-%dT%H:%M:%SZ
SUBST_VARS	=	OSREV BUILD_DATE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/version.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/abagnale ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/abagnalectl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/abagnale
	${INSTALL_DATA}	${WRKSRC}/abagnale.demo ${PREFIX}/share/abagnale
	${INSTALL_DATA} ${WRKSRC}/database-postgresql.sql ${PREFIX}/share/abagnale
	${INSTALL_DATA} ${WRKSRC}/INTRO.txt ${PREFIX}/share/abagnale
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/abagnale
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abagnale
	${INSTALL_DATA} ${WRKSRC}/abagnale.conf ${PREFIX}/share/examples/abagnale

.include <bsd.port.mk>

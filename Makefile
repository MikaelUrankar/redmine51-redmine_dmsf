# must be installed in plugins/redmine_dmsf

PORTNAME=	redmine_dmsf
PORTVERSION=	3.1.3
DISTVERSIONPREFIX=	v
CATEGORIES=	www
PKGNAMEPREFIX=	redmine51-

MAINTAINER=	xxx@xxx.fr
COMMENT=	DMSF is Document Management System Features plugin

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE.md

USES=		ruby

RUN_DEPENDS=	rubygem-rubyzip>0:archivers/rubygem-rubyzip \
		rubygem-zip-zip>0:archivers/rubygem-zip-zip \
		rubygem-uuidtools>0:devel/rubygem-uuidtools \
		rubygem-simple_enum61>0:devel/rubygem-simple_enum61 \
		rubygem-ox>0:textproc/rubygem-ox \
		rubygem-active_record_union>0:devel/rubygem-active_record_union \
		rubygem-rails-controller-testing61>0:devel/rubygem-rails-controller-testing61

USE_GITHUB=	yes
GH_ACCOUNT=	danmunn
GH_PROJECT=	redmine_dmsf

NO_ARCH=	yes

REDMINE_PLUGIN_NAME=	${PORTNAME}

.include "${.CURDIR}/../../www/redmine51/bsd.redmine.mk"

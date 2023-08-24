# automatically generated from https://github.com/metwork-framework/github_organization_management/blob/master/common_files/docker-mfxxx-yyy-buildimage_Dockerfile)


    
    
    



    
    


FROM rockylinux:9.0
ARG BRANCH
RUN echo -e "[metwork_${BRANCH}]\n\
name=Metwork Continuous Integration Branch ${BRANCH}\n\
baseurl=http://metwork-framework.org/pub/metwork/continuous_integration/rpms/${BRANCH}/centos8/\n\
gpgcheck=0\n\
enabled=1\n\
metadata_expire=0\n" >/etc/yum.repos.d/metwork.repo
RUN yum clean all
RUN yum -y install metwork-mfbase-full langpacks-fr

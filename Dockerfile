FROM centos:latest
RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo
RUN yum install powershell --assumeyes
CMD ["pwsh"]
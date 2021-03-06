FROM nfcore/base
LABEL authors="Remi-Andre Olsen" \
      description="Docker image containing all requirements for nf-core/outlaw pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-outlaw-1.0dev/bin:$PATH

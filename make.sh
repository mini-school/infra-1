#!/bin/sh
#------------------------------------------------------------------------------
# written by:   mcdaniel
#               https://lawrencemcdaniel.com
#
# date:         mar-2022
#
# usage:        Re-runs the Cookiecutter for this repository.
#------------------------------------------------------------------------------

GITHUB_REPO="gh:lpm0073/cookiecutter-openedx-devops"
GITHUB_BRANCH="main"
OUTPUT_FOLDER="../"

cookiecutter --checkout $GITHUB_BRANCH \
             --output-dir $OUTPUT_FOLDER \
             --overwrite-if-exists \
             --no-input \
             $GITHUB_REPO \
             global_platform_name=schoddle \
             global_platform_region=global \
             global_aws_region=ap-south-1 \
             global_account_id=108973625715 \
             global_root_domain=schoddle.com \
             global_aws_route53_hosted_zone_id=Z01622221BW021ZOGMKQF \
             environment_name=prod \
             environment_subdomain=courses \
             eks_worker_group_instance_type=t3.large \
             eks_worker_group_min_size=1 \
             eks_worker_group_max_size=5 \
             eks_worker_group_desired_size=1 \
             ci_build_kubectl_version=1.23/stable \
             mysql_instance_class=db.t2.small \
             mysql_allocated_storage=10 \
             redis_node_type=cache.t2.small

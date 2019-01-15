# Build local images, tag, profit.

# I. Build local images

# NGINX_TAG="info_tech_nginx"
# UWSGI_TAG="info_tech_uwsgi"

DOCKER_USER="chriscircleci"
GH_REPO="info-tech-one-dot-oh"

# Build nginx
# docker build -t ${DOCKER_USER}/${GH_REPO}-uwsgi:local nginx/

# Build uwsgi
# docker build -t ${DOCKER_USER}/${GH_REPO}-uwsgi:local uwsgi/

# II. Run Demo
# docker-compose up -d

# III. Pull latest image from ECR

# chriscircleci
# info-tech-one-dot-oh

run_locally() {
	docker-compose -p 1234 -d up -d
	docker run --link ${CIRCLE_BUILD_NUM}_nginx_1:nginx --name $(cat test_container_name) {GH-REPO}-test
}

run_locally
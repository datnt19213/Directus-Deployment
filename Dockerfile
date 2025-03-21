# Sử dụng image chính thức của Directus
FROM directus/directus:latest

# Thiết lập biến môi trường
ENV NODE_ENV=production

# Copy toàn bộ code vào container
WORKDIR /directus
COPY . .

# Mở port 8055 cho Directus
EXPOSE 8055

# Chạy Directus
CMD ["directus", "start"]

// main.js

document.addEventListener('DOMContentLoaded', function() {
    // 좋아요 버튼 기능
    const likeButtons = document.querySelectorAll('.like-button');
    likeButtons.forEach(button => {
        button.addEventListener('click', function() {
            this.classList.toggle('liked');
            // 여기에 좋아요 API 호출 로직 추가
        });
    });

    // 댓글 버튼 기능
    const commentButtons = document.querySelectorAll('.comment-button');
    commentButtons.forEach(button => {
        button.addEventListener('click', function() {
            const commentSection = this.closest('.post').querySelector('.comments');
            commentSection.classList.toggle('show');
        });
    });

    // 무한 스크롤 기능
    window.addEventListener('scroll', function() {
        if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 100) {
            loadMorePosts();
        }
    });
});

function loadMorePosts() {
    // 여기에 추가 게시물을 불러오는 API 호출 로직 추가
    console.log('추가 게시물 로딩...');
}
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Comment
from .serializers import CommentSerializer


class PostCommentAPIView(APIView):
    def get(self, _, pk=None):
        comments = Comments.objects.filter(post_id=pk)
        serializer = CommentSerializer(comments, many=True)
        return Response(serializer.data)


class CommentsAPIView(APIView):
    def post(self, request):
        serializer = CommentSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)
        


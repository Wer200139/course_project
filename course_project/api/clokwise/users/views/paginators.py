from rest_framework.pagination import PageNumberPagination

class ExpertRequestsPagination(PageNumberPagination):
    page_size = 30
    page_size_query_param = 'page_size'
    max_page_size = 50
    page_query_param = 'page'

    def get_page_number(self, request, paginator):
        page_number = request.data.get(self.page_query_param) or 1
        if page_number in self.last_page_strings:
            page_number = paginator.num_pages
        return page_number
    

class UserReviewsPagination(PageNumberPagination):
    page_size = 5
    page_size_query_param = 'page_size'
    max_page_size = 5
    page_query_param = 'page'
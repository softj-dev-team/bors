.class Lzendesk/messaging/ui/ArticlesResponseView$1;
.super Ljava/lang/Object;
.source "ArticlesResponseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/ArticlesResponseView;->bindArticleSuggestion(Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/ui/ArticlesResponseView;

.field final synthetic val$articleSuggestionViewState:Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/ArticlesResponseView;Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lzendesk/messaging/ui/ArticlesResponseView$1;->this$0:Lzendesk/messaging/ui/ArticlesResponseView;

    iput-object p2, p0, Lzendesk/messaging/ui/ArticlesResponseView$1;->val$articleSuggestionViewState:Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lzendesk/messaging/ui/ArticlesResponseView$1;->val$articleSuggestionViewState:Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;

    invoke-virtual {p1}, Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;->getOnArticleSuggestionSelectionListener()Lzendesk/messaging/ui/OnArticleSuggestionSelectionListener;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/ArticlesResponseView$1;->this$0:Lzendesk/messaging/ui/ArticlesResponseView;

    .line 109
    invoke-virtual {v0}, Lzendesk/messaging/ui/ArticlesResponseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/messaging/ui/OnArticleSuggestionSelectionListener;->onArticleSuggestionSelected(Landroid/content/Context;)V

    return-void
.end method

.class Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;
.super Landroid/widget/RelativeLayout;
.source "ViewArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ViewArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArticleAttachmentRow"
.end annotation


# instance fields
.field private final fileName:Landroid/widget/TextView;

.field private final fileSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 707
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 708
    sget v0, Lcom/zendesk/guide/sdk/R$layout;->zs_row_article_attachment:I

    invoke-static {p1, v0, p0}, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 709
    sget p1, Lcom/zendesk/guide/sdk/R$id;->article_attachment_row_filename_text:I

    invoke-virtual {p0, p1}, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->fileName:Landroid/widget/TextView;

    .line 710
    sget p1, Lcom/zendesk/guide/sdk/R$id;->article_attachment_row_filesize_text:I

    invoke-virtual {p0, p1}, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->fileSize:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Lzendesk/support/HelpCenterAttachment;)V
    .locals 2

    .line 714
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->fileName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/HelpCenterAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow;->fileSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/HelpCenterAttachment;->getSize()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/FileUtils;->humanReadableFileSize(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

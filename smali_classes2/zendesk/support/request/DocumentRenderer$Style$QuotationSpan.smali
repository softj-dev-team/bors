.class public Lzendesk/support/request/DocumentRenderer$Style$QuotationSpan;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"

# interfaces
.implements Lzendesk/support/request/DocumentRenderer$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuotationSpan"
.end annotation


# instance fields
.field private quoteColor:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lzendesk/support/request/DocumentRenderer$Style$QuotationSpan;->quoteColor:I

    return-void
.end method


# virtual methods
.method public applyStyle(Ljava/util/List;Ljava/util/Map;)Landroid/text/Spannable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 267
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, " "

    .line 268
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-static {p2}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->foldStrings(Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 273
    new-instance v0, Landroid/text/style/QuoteSpan;

    iget v1, p0, Lzendesk/support/request/DocumentRenderer$Style$QuotationSpan;->quoteColor:I

    invoke-direct {v0, v1}, Landroid/text/style/QuoteSpan;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lzendesk/support/request/DocumentRenderer$Style$QuotationSpan;->quoteColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->applySpans(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method

.class Lzendesk/core/ZendeskUserProvider$7;
.super Ljava/lang/Object;
.source "ZendeskUserProvider.java"

# interfaces
.implements Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskUserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor<",
        "Lzendesk/core/UserFieldResponse;",
        "Ljava/util/List<",
        "Lzendesk/core/UserField;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Lzendesk/core/UserFieldResponse;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskUserProvider$7;->extract(Lzendesk/core/UserFieldResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lzendesk/core/UserFieldResponse;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/UserFieldResponse;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/core/UserField;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lzendesk/core/UserFieldResponse;->getUserFields()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

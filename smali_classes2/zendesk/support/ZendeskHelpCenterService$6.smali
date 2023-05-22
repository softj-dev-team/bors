.class Lzendesk/support/ZendeskHelpCenterService$6;
.super Ljava/lang/Object;
.source "ZendeskHelpCenterService.java"

# interfaces
.implements Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterService;->getCategoryById(Ljava/lang/Long;Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor<",
        "Lzendesk/support/CategoryResponse;",
        "Lzendesk/support/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/ZendeskHelpCenterService;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterService;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterService$6;->this$0:Lzendesk/support/ZendeskHelpCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 272
    check-cast p1, Lzendesk/support/CategoryResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterService$6;->extract(Lzendesk/support/CategoryResponse;)Lzendesk/support/Category;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lzendesk/support/CategoryResponse;)Lzendesk/support/Category;
    .locals 0

    .line 275
    invoke-virtual {p1}, Lzendesk/support/CategoryResponse;->getCategory()Lzendesk/support/Category;

    move-result-object p1

    return-object p1
.end method

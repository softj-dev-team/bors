.class abstract Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ZendeskHelpCenterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ZendeskCallbackSuccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/service/ZendeskCallback<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/ZendeskCallback;


# direct methods
.method constructor <init>(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 767
    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    .line 768
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;->callback:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;->callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

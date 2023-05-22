.class Lzendesk/support/request/ComponentInputForm$InputFormSelector;
.super Ljava/lang/Object;
.source "ComponentInputForm.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentInputForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputFormSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentInputForm$InputFormModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentInputForm$InputFormSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentInputForm$InputFormModel;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentInputForm$InputFormModel;
    .locals 8

    .line 403
    invoke-static {p1}, Lzendesk/support/request/StateConfig;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object v0

    .line 404
    invoke-static {p1}, Lzendesk/support/request/StateProgress;->fomState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateProgress;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lzendesk/support/request/StateProgress;->getRunningRequests()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 408
    :goto_0
    new-instance p1, Lzendesk/support/request/ComponentInputForm$InputFormModel;

    .line 409
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->isNeverRequestEmailOn()Z

    move-result v2

    .line 410
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->hasIdentityEmailAddress()Z

    move-result v3

    .line 411
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->hasIdentityName()Z

    move-result v4

    .line 413
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->isShowZendeskLogo()Z

    move-result v6

    .line 414
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->getReferrerUrl()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lzendesk/support/request/ComponentInputForm$InputFormModel;-><init>(ZZZZZLjava/lang/String;)V

    return-object p1
.end method

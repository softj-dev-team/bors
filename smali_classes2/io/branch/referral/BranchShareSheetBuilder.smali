.class public Lio/branch/referral/BranchShareSheetBuilder;
.super Ljava/lang/Object;
.source "BranchShareSheetBuilder.java"


# instance fields
.field private final activity_:Landroid/app/Activity;

.field private callback_:Lio/branch/referral/Branch$BranchLinkShareListener;

.field private channelPropertiesCallback_:Lio/branch/referral/Branch$IChannelProperties;

.field private copyURlText_:Ljava/lang/String;

.field private copyUrlIcon_:Landroid/graphics/drawable/Drawable;

.field private defaultURL_:Ljava/lang/String;

.field private dialogThemeResourceID_:I

.field private dividerHeight_:I

.field private excludeFromShareSheet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconSize_:I

.field private includeInShareSheet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moreOptionIcon_:Landroid/graphics/drawable/Drawable;

.field private moreOptionText_:Ljava/lang/String;

.field private preferredOptions_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/branch/referral/SharingHelper$SHARE_WITH;",
            ">;"
        }
    .end annotation
.end field

.field private setFullWidthStyle_:Z

.field private shareMsg_:Ljava/lang/String;

.field private shareSub_:Ljava/lang/String;

.field private sharingTitleView_:Landroid/view/View;

.field private sharingTitle_:Ljava/lang/String;

.field private shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

.field private styleResourceID_:I

.field private urlCopiedMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/branch/referral/BranchShortLinkBuilder;)V
    .locals 1

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/referral/BranchShareSheetBuilder;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 100
    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->dividerHeight_:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitle_:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitleView_:Landroid/view/View;

    const/16 v1, 0x32

    .line 47
    iput v1, p0, Lio/branch/referral/BranchShareSheetBuilder;->iconSize_:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    .line 62
    new-instance v1, Lio/branch/referral/BranchShortLinkBuilder;

    invoke-direct {v1, p1}, Lio/branch/referral/BranchShortLinkBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    const-string p2, ""

    .line 71
    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->shareMsg_:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->callback_:Lio/branch/referral/Branch$BranchLinkShareListener;

    .line 73
    iput-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->channelPropertiesCallback_:Lio/branch/referral/Branch$IChannelProperties;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->preferredOptions_:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->defaultURL_:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1080045

    invoke-static {p2, v0}, Lio/branch/referral/BranchUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionIcon_:Landroid/graphics/drawable/Drawable;

    const-string p2, "More..."

    .line 78
    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionText_:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x108004e

    invoke-static {p1, p2}, Lio/branch/referral/BranchUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyUrlIcon_:Landroid/graphics/drawable/Drawable;

    const-string p1, "Copy link"

    .line 81
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyURlText_:Ljava/lang/String;

    const-string p1, "Copied link to clipboard!"

    .line 82
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->urlCopiedMessage_:Ljava/lang/String;

    .line 84
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch;->getDeviceInfo()Lio/branch/referral/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/DeviceInfo;->isTV()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.google.android.tv.frameworkpackagestubs"

    .line 87
    invoke-virtual {p0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 232
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public addPreferredSharingOption(Lio/branch/referral/SharingHelper$SHARE_WITH;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 205
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->preferredOptions_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPreferredSharingOptions(Ljava/util/ArrayList;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/branch/referral/SharingHelper$SHARE_WITH;",
            ">;)",
            "Lio/branch/referral/BranchShareSheetBuilder;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->preferredOptions_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addTag(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->addTag(Ljava/lang/String;)Lio/branch/referral/BranchUrlBuilder;

    return-object p0
.end method

.method public addTags(Ljava/util/ArrayList;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/referral/BranchShareSheetBuilder;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->addTags(Ljava/util/List;)Lio/branch/referral/BranchUrlBuilder;

    return-object p0
.end method

.method public excludeFromShareSheet(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 414
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public excludeFromShareSheet(Ljava/util/List;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/referral/BranchShareSheetBuilder;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public excludeFromShareSheet([Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 425
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 501
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    return-object v0
.end method

.method public getBranch()Lio/branch/referral/Branch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lio/branch/referral/Branch$BranchLinkShareListener;
    .locals 1

    .line 529
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->callback_:Lio/branch/referral/Branch$BranchLinkShareListener;

    return-object v0
.end method

.method public getChannelPropertiesCallback()Lio/branch/referral/Branch$IChannelProperties;
    .locals 1

    .line 533
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->channelPropertiesCallback_:Lio/branch/referral/Branch$IChannelProperties;

    return-object v0
.end method

.method public getCopyURlText()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyURlText_:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyUrlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 549
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyUrlIcon_:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultURL()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->defaultURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogThemeResourceID()I
    .locals 1

    .line 569
    iget v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->dialogThemeResourceID_:I

    return v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 573
    iget v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->dividerHeight_:I

    return v0
.end method

.method getExcludedFromShareSheet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet:Ljava/util/List;

    return-object v0
.end method

.method public getIconSize()I
    .locals 1

    .line 589
    iget v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->iconSize_:I

    return v0
.end method

.method getIncludedInShareSheet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet:Ljava/util/List;

    return-object v0
.end method

.method public getIsFullWidthStyle()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->setFullWidthStyle_:Z

    return v0
.end method

.method public getMoreOptionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 541
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionIcon_:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMoreOptionText()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionText_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredOptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/branch/referral/SharingHelper$SHARE_WITH;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->preferredOptions_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareMsg()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shareMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSub()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shareSub_:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingTitle()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingTitleView()Landroid/view/View;
    .locals 1

    .line 581
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitleView_:Landroid/view/View;

    return-object v0
.end method

.method public getShortLinkBuilder()Lio/branch/referral/BranchShortLinkBuilder;
    .locals 1

    .line 561
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    return-object v0
.end method

.method public getStyleResourceID()I
    .locals 1

    .line 585
    iget v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->styleResourceID_:I

    return v0
.end method

.method public getUrlCopiedMessage()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->urlCopiedMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public includeInShareSheet(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 449
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public includeInShareSheet(Ljava/util/List;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/referral/BranchShareSheetBuilder;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public includeInShareSheet([Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 462
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 321
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->setAlias(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    return-object p0
.end method

.method public setAsFullWidthStyle(Z)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 346
    iput-boolean p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->setFullWidthStyle_:Z

    return-object p0
.end method

.method public setCallback(Lio/branch/referral/Branch$BranchLinkShareListener;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 182
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->callback_:Lio/branch/referral/Branch$BranchLinkShareListener;

    return-object p0
.end method

.method public setChannelProperties(Lio/branch/referral/Branch$IChannelProperties;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 191
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->channelPropertiesCallback_:Lio/branch/referral/Branch$IChannelProperties;

    return-object p0
.end method

.method public setCopyUrlStyle(III)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 302
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/branch/referral/BranchUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyUrlIcon_:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyURlText_:Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->urlCopiedMessage_:Ljava/lang/String;

    return-object p0
.end method

.method public setCopyUrlStyle(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 287
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyUrlIcon_:Landroid/graphics/drawable/Drawable;

    .line 288
    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->copyURlText_:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lio/branch/referral/BranchShareSheetBuilder;->urlCopiedMessage_:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultURL(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 245
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->defaultURL_:Ljava/lang/String;

    return-object p0
.end method

.method public setDialogThemeResourceID(I)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 359
    iput p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->dialogThemeResourceID_:I

    return-object p0
.end method

.method public setDividerHeight(I)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 370
    iput p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->dividerHeight_:I

    return-object p0
.end method

.method public setFeature(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->setFeature(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    return-object p0
.end method

.method public setIconSize(I)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 403
    iput p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->iconSize_:I

    return-object p0
.end method

.method public setMatchDuration(I)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 333
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->setDuration(I)Lio/branch/referral/BranchShortLinkBuilder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 110
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->shareMsg_:Ljava/lang/String;

    return-object p0
.end method

.method public setMoreOptionStyle(II)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 272
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/branch/referral/BranchUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionIcon_:Landroid/graphics/drawable/Drawable;

    .line 273
    iget-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->activity_:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionText_:Ljava/lang/String;

    return-object p0
.end method

.method public setMoreOptionStyle(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionIcon_:Landroid/graphics/drawable/Drawable;

    .line 259
    iput-object p2, p0, Lio/branch/referral/BranchShareSheetBuilder;->moreOptionText_:Ljava/lang/String;

    return-object p0
.end method

.method public setSharingTitle(Landroid/view/View;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 392
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitleView_:Landroid/view/View;

    return-object p0
.end method

.method public setSharingTitle(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 381
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->sharingTitle_:Ljava/lang/String;

    return-object p0
.end method

.method public setShortLinkBuilderInternal(Lio/branch/referral/BranchShortLinkBuilder;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    return-void
.end method

.method public setStage(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 1

    .line 171
    iget-object v0, p0, Lio/branch/referral/BranchShareSheetBuilder;->shortLinkBuilder_:Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;->setStage(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    return-object p0
.end method

.method public setStyleResourceID(I)V
    .locals 0

    .line 485
    iput p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->styleResourceID_:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;
    .locals 0

    .line 121
    iput-object p1, p0, Lio/branch/referral/BranchShareSheetBuilder;->shareSub_:Ljava/lang/String;

    return-object p0
.end method

.method public shareLink()V
    .locals 1

    .line 497
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/referral/Branch;->shareLink(Lio/branch/referral/BranchShareSheetBuilder;)V

    return-void
.end method

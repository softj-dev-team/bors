.class public Lcom/sdkbox/plugin/SocialShareResponse;
.super Ljava/lang/Object;
.source "SocialShareResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;
    }
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getShareState()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->ordinal()I

    move-result v0

    return v0
.end method

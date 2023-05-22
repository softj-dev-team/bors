.class Lzendesk/belvedere/BelvedereDialog$2;
.super Ljava/lang/Object;
.source "BelvedereDialog.java"

# interfaces
.implements Lzendesk/belvedere/BelvedereDialog$StartActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/BelvedereDialog;->fillList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/BelvedereDialog;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lzendesk/belvedere/BelvedereDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lzendesk/belvedere/BelvedereDialog$2;->this$0:Lzendesk/belvedere/BelvedereDialog;

    iput-object p2, p0, Lzendesk/belvedere/BelvedereDialog$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 143
    iget-object v0, p0, Lzendesk/belvedere/BelvedereDialog$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public startActivity(Lzendesk/belvedere/MediaIntent;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lzendesk/belvedere/BelvedereDialog$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lzendesk/belvedere/MediaIntent;->open(Landroid/app/Activity;)V

    return-void
.end method

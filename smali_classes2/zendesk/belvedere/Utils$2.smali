.class final Lzendesk/belvedere/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/Utils;->showBottomSheetDialog(Landroid/view/View;Ljava/lang/String;JLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field final synthetic val$onActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lzendesk/belvedere/Utils$2;->val$onActionClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lzendesk/belvedere/Utils$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lzendesk/belvedere/Utils$2;->val$bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lzendesk/belvedere/Utils$2;->val$onActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lzendesk/belvedere/Utils$2;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lzendesk/belvedere/Utils$2;->val$bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    return-void
.end method

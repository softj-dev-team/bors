.class Lzendesk/messaging/components/CompositeActionListener$1;
.super Ljava/lang/Object;
.source "CompositeActionListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/components/CompositeActionListener;->clicks(Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$observer:Lzendesk/messaging/components/CompositeActionListener;


# direct methods
.method constructor <init>(Lzendesk/messaging/components/CompositeActionListener;Ljava/lang/Object;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lzendesk/messaging/components/CompositeActionListener$1;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    iput-object p2, p0, Lzendesk/messaging/components/CompositeActionListener$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lzendesk/messaging/components/CompositeActionListener$1;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    iget-object v0, p0, Lzendesk/messaging/components/CompositeActionListener$1;->val$data:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lzendesk/messaging/components/CompositeActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method

.class Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/KeyboardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardTreeObserver"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lzendesk/belvedere/KeyboardHelper;


# direct methods
.method private constructor <init>(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->activity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;Lzendesk/belvedere/KeyboardHelper$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;-><init>(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 174
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lzendesk/belvedere/KeyboardHelper;->access$100(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;)I

    move-result v0

    .line 175
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lzendesk/belvedere/KeyboardHelper;->access$202(Lzendesk/belvedere/KeyboardHelper;Z)Z

    if-lez v0, :cond_1

    .line 177
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v1}, Lzendesk/belvedere/KeyboardHelper;->access$300(Lzendesk/belvedere/KeyboardHelper;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 178
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v1, v0}, Lzendesk/belvedere/KeyboardHelper;->access$302(Lzendesk/belvedere/KeyboardHelper;I)I

    .line 180
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v1}, Lzendesk/belvedere/KeyboardHelper;->access$400(Lzendesk/belvedere/KeyboardHelper;)Lzendesk/belvedere/KeyboardHelper$SizeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v1}, Lzendesk/belvedere/KeyboardHelper;->access$400(Lzendesk/belvedere/KeyboardHelper;)Lzendesk/belvedere/KeyboardHelper$SizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lzendesk/belvedere/KeyboardHelper$SizeListener;->onSizeChanged(I)V

    .line 185
    :cond_1
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v1}, Lzendesk/belvedere/KeyboardHelper;->access$500(Lzendesk/belvedere/KeyboardHelper;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 186
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v0}, Lzendesk/belvedere/KeyboardHelper;->access$600(Lzendesk/belvedere/KeyboardHelper;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;->this$0:Lzendesk/belvedere/KeyboardHelper;

    invoke-static {v0}, Lzendesk/belvedere/KeyboardHelper;->access$700(Lzendesk/belvedere/KeyboardHelper;)V

    :goto_1
    return-void
.end method

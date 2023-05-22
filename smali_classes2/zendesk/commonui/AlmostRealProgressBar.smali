.class public Lzendesk/commonui/AlmostRealProgressBar;
.super Landroid/widget/ProgressBar;
.source "AlmostRealProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;,
        Lzendesk/commonui/AlmostRealProgressBar$State;,
        Lzendesk/commonui/AlmostRealProgressBar$Step;
    }
.end annotation


# static fields
.field public static final ALPHA_FADE_DURATION:J = 0x64L

.field public static final DONT_STOP_MOVING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_DEBOUNCE_TIME:J = 0x64L

.field public static final STOP_ANIMATION_DURATION:J = 0x12cL

.field public static final STOP_DEBOUNCE_TIME:J = 0xc8L


# instance fields
.field private finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

.field private handler:Landroid/os/Handler;

.field private progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

.field private startDebounceRunnable:Ljava/lang/Runnable;

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field

.field private stopDebounceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lzendesk/commonui/AlmostRealProgressBar$Step;

    .line 40
    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$Step;

    const/16 v2, 0x3c

    const-wide/16 v3, 0xfa0

    invoke-direct {v1, v2, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar$Step;-><init>(IJ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$Step;

    const/16 v2, 0x5a

    const-wide/16 v3, 0x3a98

    invoke-direct {v1, v2, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar$Step;-><init>(IJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzendesk/commonui/AlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lzendesk/commonui/AlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lzendesk/commonui/AlmostRealProgressBar;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lzendesk/commonui/AlmostRealProgressBar;->steps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->steps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar;->kickOffAnimation(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$302(Lzendesk/commonui/AlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lzendesk/commonui/AlmostRealProgressBar;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimation(J)V

    return-void
.end method

.method private adjustTime(IILzendesk/commonui/AlmostRealProgressBar$Step;)Lzendesk/commonui/AlmostRealProgressBar$Step;
    .locals 3

    .line 200
    invoke-static {p3}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 203
    invoke-static {p3}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$600(Lzendesk/commonui/AlmostRealProgressBar$Step;)J

    move-result-wide v1

    long-to-float p2, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-long p1, p2

    .line 204
    new-instance v0, Lzendesk/commonui/AlmostRealProgressBar$Step;

    invoke-static {p3}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result p3

    invoke-direct {v0, p3, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar$Step;-><init>(IJ)V

    return-object v0
.end method

.method private endAnimation(J)Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;
    .locals 8

    .line 147
    invoke-virtual {p0}, Lzendesk/commonui/AlmostRealProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x64

    .line 148
    invoke-direct {p0, v2, v3, v4, v5}, Lzendesk/commonui/AlmostRealProgressBar;->progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 150
    invoke-direct {p0, v1, v5, v6, v7}, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object v1

    .line 151
    invoke-direct {p0, v3, v2, v6, v7}, Lzendesk/commonui/AlmostRealProgressBar;->progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;

    move-result-object v2

    .line 153
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 155
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 158
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 166
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 169
    new-instance p1, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    invoke-direct {p1, v1}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p1
.end method

.method private finishAnimation(J)V
    .locals 1

    .line 106
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    .line 111
    invoke-direct {p0, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar;->endAnimation(J)Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    move-result-object p1

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    .line 112
    invoke-virtual {p1}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private kickOffAnimation(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;I)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 119
    iget-object v2, p0, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    invoke-virtual {v2}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->isEnded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    invoke-virtual {v0}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lzendesk/commonui/AlmostRealProgressBar;->finishAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    .line 124
    invoke-direct {p0, p1, p2, v0, v1}, Lzendesk/commonui/AlmostRealProgressBar;->startAnimation(Ljava/util/List;IJ)Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    move-result-object p1

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    .line 125
    invoke-virtual {p1}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private progressAnimator(IIJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "progress"

    .line 214
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 215
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 208
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private restoreProgress(Lzendesk/commonui/AlmostRealProgressBar$State;)V
    .locals 8

    .line 173
    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$700(Lzendesk/commonui/AlmostRealProgressBar$State;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$800(Lzendesk/commonui/AlmostRealProgressBar$State;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$800(Lzendesk/commonui/AlmostRealProgressBar$State;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/commonui/AlmostRealProgressBar$Step;

    .line 179
    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$700(Lzendesk/commonui/AlmostRealProgressBar$State;)I

    move-result v6

    invoke-static {v5}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 180
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v5}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result v4

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {v2}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/commonui/AlmostRealProgressBar$Step;

    .line 188
    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$700(Lzendesk/commonui/AlmostRealProgressBar$State;)I

    move-result v5

    invoke-direct {p0, v5, v4, v3}, Lzendesk/commonui/AlmostRealProgressBar;->adjustTime(IILzendesk/commonui/AlmostRealProgressBar$Step;)Lzendesk/commonui/AlmostRealProgressBar$Step;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    :cond_2
    invoke-static {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->access$700(Lzendesk/commonui/AlmostRealProgressBar$State;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lzendesk/commonui/AlmostRealProgressBar;->kickOffAnimation(Ljava/util/List;I)V

    .line 192
    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->steps:Ljava/util/List;

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0, v1}, Lzendesk/commonui/AlmostRealProgressBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private startAnimation(Ljava/util/List;IJ)Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;IJ)",
            "Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/commonui/AlmostRealProgressBar$Step;

    .line 134
    invoke-static {v1}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result v2

    invoke-static {v1}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$600(Lzendesk/commonui/AlmostRealProgressBar$Step;)J

    move-result-wide v3

    invoke-direct {p0, p2, v2, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object p2

    .line 135
    invoke-static {v1}, Lzendesk/commonui/AlmostRealProgressBar$Step;->access$500(Lzendesk/commonui/AlmostRealProgressBar$Step;)I

    move-result v1

    .line 136
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 140
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 141
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 143
    new-instance p2, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    invoke-direct {p2, p1}, Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p2
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 235
    instance-of v0, p1, Lzendesk/commonui/AlmostRealProgressBar$State;

    if-eqz v0, :cond_0

    .line 236
    check-cast p1, Lzendesk/commonui/AlmostRealProgressBar$State;

    .line 237
    invoke-direct {p0, p1}, Lzendesk/commonui/AlmostRealProgressBar;->restoreProgress(Lzendesk/commonui/AlmostRealProgressBar$State;)V

    .line 238
    invoke-virtual {p1}, Lzendesk/commonui/AlmostRealProgressBar$State;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    .line 241
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 222
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->progressAnimator:Lzendesk/commonui/AlmostRealProgressBar$StateAwareAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 224
    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$State;

    invoke-virtual {p0}, Lzendesk/commonui/AlmostRealProgressBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lzendesk/commonui/AlmostRealProgressBar;->steps:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lzendesk/commonui/AlmostRealProgressBar$State;-><init>(Landroid/os/Parcelable;ILjava/util/List;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lzendesk/commonui/AlmostRealProgressBar;->setProgress(I)V

    .line 228
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lzendesk/commonui/AlmostRealProgressBar$1;

    invoke-direct {v0, p0, p1}, Lzendesk/commonui/AlmostRealProgressBar$1;-><init>(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;)V

    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    .line 81
    iget-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop(J)V
    .locals 3

    .line 87
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lzendesk/commonui/AlmostRealProgressBar$2;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/commonui/AlmostRealProgressBar$2;-><init>(Lzendesk/commonui/AlmostRealProgressBar;J)V

    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    .line 100
    iget-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

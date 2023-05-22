.class Lzendesk/support/request/ViewRequestText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ViewRequestText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lzendesk/support/request/ViewRequestText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lzendesk/support/request/ViewRequestText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lzendesk/support/request/ViewRequestText;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 36
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewRequestText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lzendesk/support/request/ViewRequestText;->getSelectionStart()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lzendesk/support/request/ViewRequestText;->getSelectionEnd()I

    move-result v1

    if-ltz v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lzendesk/support/request/ViewRequestText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v1}, Lzendesk/support/request/ViewRequestText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewRequestText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lzendesk/support/request/ViewRequestText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Lzendesk/support/request/ViewRequestText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 54
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

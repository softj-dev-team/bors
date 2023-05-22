.class final Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;
.super Ljava/lang/Object;
.source "MessagingComposer.java"

# interfaces
.implements Lzendesk/belvedere/ImageStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/ui/MessagingComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BelvedereMediaPickerListener"
.end annotation


# instance fields
.field private final belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

.field private final imageStream:Lzendesk/belvedere/ImageStream;

.field private final inputBox:Lzendesk/messaging/ui/InputBox;


# direct methods
.method constructor <init>(Lzendesk/messaging/BelvedereMediaHolder;Lzendesk/messaging/ui/InputBox;Lzendesk/belvedere/ImageStream;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    .line 136
    iput-object p2, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->inputBox:Lzendesk/messaging/ui/InputBox;

    .line 137
    iput-object p3, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->imageStream:Lzendesk/belvedere/ImageStream;

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 1

    .line 142
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/KeyboardHelper;->getInputTrap()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->inputBox:Lzendesk/messaging/ui/InputBox;

    invoke-virtual {v0}, Lzendesk/messaging/ui/InputBox;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onMediaDeselected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {v0, p1}, Lzendesk/messaging/BelvedereMediaHolder;->removeAll(Ljava/util/List;)V

    .line 161
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->inputBox:Lzendesk/messaging/ui/InputBox;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {v0}, Lzendesk/messaging/BelvedereMediaHolder;->getSelectedMediaCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/InputBox;->setAttachmentsCount(I)V

    return-void
.end method

.method public onMediaSelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {v0, p1}, Lzendesk/messaging/BelvedereMediaHolder;->addAll(Ljava/util/List;)V

    .line 155
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->inputBox:Lzendesk/messaging/ui/InputBox;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {v0}, Lzendesk/messaging/BelvedereMediaHolder;->getSelectedMediaCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/InputBox;->setAttachmentsCount(I)V

    return-void
.end method

.method public onVisible()V
    .locals 0

    return-void
.end method

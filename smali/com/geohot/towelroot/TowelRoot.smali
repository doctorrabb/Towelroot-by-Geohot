.class public Lcom/geohot/towelroot/TowelRoot;
.super Landroid/app/Activity;
.source "TowelRoot.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "exploit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 32
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lcom/geohot/towelroot/TowelRoot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/geohot/towelroot/TowelRoot;->rootTheShit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/geohot/towelroot/TowelRoot;->setContentView(I)V

    .line 29
    return-void
.end method

.method public native rootTheShit()Ljava/lang/String;
.end method

.class final Landroid/os/StrictMode$7;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1

    const-string v0, "StrictMode"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
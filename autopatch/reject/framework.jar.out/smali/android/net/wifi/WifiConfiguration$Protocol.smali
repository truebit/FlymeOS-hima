.class public Landroid/net/wifi/WifiConfiguration$Protocol;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final WAPI:I = 0x2

.field public static final RSN:I = 0x1

.field public static final WAPI:I = 0x2

.field public static final WPA:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "proto"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WPA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RSN"

    aput-object v2, v0, v1

<<<<<<< VENDOR #Conflict 0
    const/4 v1, 0x2

    const-string v2, "WAPI"

    aput-object v2, v0, v1

======= #@.method static constructor <clinit>@
    add-int/lit8 v1, v1, 0x1

    const-string v2, "WAPI"

    aput-object v2, v0, v1

>>>>>>> BOSP #Conflict 0
    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
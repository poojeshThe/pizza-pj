.class public Lcom/pizza/work/CountriesList;
.super Ljava/lang/Object;
.source "CountriesList.java"


# static fields
.field public static abbreviations:[Ljava/lang/String;

.field public static countries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Afghanistan"

    aput-object v1, v0, v3

    const-string v1, "Albania"

    aput-object v1, v0, v4

    const-string v1, "Algeria"

    aput-object v1, v0, v5

    .line 10
    const-string v1, "American Samoa"

    aput-object v1, v0, v6

    const-string v1, "Andorra"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Angola"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Anguilla"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Antarctica"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 12
    const-string v2, "Antigua and Barbuda"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Argentina"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Armenia"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Aruba"

    aput-object v2, v0, v1

    .line 8
    sput-object v0, Lcom/pizza/work/CountriesList;->countries:[Ljava/lang/String;

    .line 15
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AF"

    aput-object v1, v0, v3

    const-string v1, "AL"

    aput-object v1, v0, v4

    const-string v1, "DZ"

    aput-object v1, v0, v5

    const-string v1, "AS"

    aput-object v1, v0, v6

    const-string v1, "AD"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AQ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 17
    const-string v2, "AG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AZ"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BH"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 19
    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BZ"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "BT"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BW"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "BV"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "BR"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/pizza/work/CountriesList;->abbreviations:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

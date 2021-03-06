import os
import sys

# Add parent directory to path to make test aware of other modules
pardir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(pardir)

from extras.data_audit_wrapper import IP_verified
from common.testing import DATADIR

if __name__ == '__main__':
    # Verify external data provided with InaSAFE
    IP_verified(DATADIR)

    # Verify bundled test data
    IP_verified(os.path.join(pardir, 'unit_test_data'))
